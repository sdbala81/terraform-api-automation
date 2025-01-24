# main.tf

# API Client Resource
resource "auth0_client" "api_client" {
  name     = "${var.organization_name}-API-M2M"
  app_type = "non_interactive"
  client_metadata = {
    subscriptions = var.subscriptions
  }
}

# API Server Resource
resource "auth0_resource_server" "api_server" {
  name       = "${var.organization_name}-Element-API"
  identifier = "https://elogiq.net/${lower(var.organization_name)}"

  skip_consent_for_verifiable_first_party_clients = true
}

# API Client Grant
resource "auth0_client_grant" "api_client_grant" {
  client_id = auth0_client.api_client.client_id
  audience  = auth0_resource_server.api_server.identifier

  scopes = ["read:users", "write:users"]
}

# Dashboard Client Resource
resource "auth0_client" "dashboard_client" {
  name                          = "${var.organization_name}-Dashboard-RWA"
  app_type                      = "regular_web"
  callbacks                     = ["https://${var.auth0_domain}/${lower(var.organization_name)}/dashboard/callback"]
  allowed_logout_urls           = ["https://${var.auth0_domain}/${lower(var.organization_name)}/dashboard"]
  web_origins                   = ["http://${var.auth0_domain}"]
  initiate_login_uri            = "https://${var.auth0_domain}/${lower(var.organization_name)}/dashboard"
  grant_types                   = ["implicit", "authorization_code", "refresh_token"]
  organization_usage            = "require"
  organization_require_behavior = "pre_login_prompt"
  jwt_configuration {
    alg = "RS256"
  }
}

# User Resource
resource "auth0_user" "user" {
  email           = lower(var.organization_administrator_email)
  name            = var.organization_administrator_name
  connection_name = "Username-Password-Authentication"
  email_verified  = true
  password        = var.organization_administrator_password

  app_metadata = jsonencode({
    is_admin = true
  })
}

# Organization and User Resource
resource "auth0_organization" "organization" {
  name         = lower(replace(var.organization_name, " ", "-"))
  display_name = var.organization_name
}

resource "auth0_organization_member" "organization_member" {
  organization_id = auth0_organization.organization.id
  user_id         = auth0_user.user.id
}
