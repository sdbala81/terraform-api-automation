# Outputs
output "client_id" {
  value       = auth0_client.api_client.client_id
  description = "The client ID of the Auth0 API client."
  depends_on  = [auth0_client.api_client]
}

# output "client_secret" {
#   value       = auth0_client.api_client.client_secret
#   sensitive   = true
#   description = "The client secret of the Auth0 API client."
#   depends_on  = [auth0_client.api_client]
# }

output "audience" {
  value       = auth0_resource_server.api_server.identifier
  description = "The audience of the Auth0 resource server."
  depends_on  = [auth0_resource_server.api_server]
}

output "organization_id" {
  value       = auth0_organization.organization.id
  description = "The ID of the Auth0 organization."
  depends_on  = [auth0_organization.organization]
}

output "user_id" {
  value       = auth0_user.user.id
  description = "The ID of the Auth0 user."
  depends_on  = [auth0_user.user]
}
