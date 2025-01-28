resource "auth0_resource_server" "api_server" {
  name       = "${var.organization_name}-Element-API"
  identifier = "https://elogiq.net/${lower(var.organization_name)}"

  skip_consent_for_verifiable_first_party_clients = true
}
