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
