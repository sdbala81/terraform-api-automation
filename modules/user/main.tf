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
