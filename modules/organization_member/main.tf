resource "auth0_organization_member" "organization_member" {
  organization_id = var.organization_id
  user_id         = var.user_id
}
