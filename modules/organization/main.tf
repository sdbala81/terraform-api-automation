resource "auth0_organization" "organization" {
  name         = lower(replace(var.organization_name, " ", "-"))
  display_name = var.organization_name
}
