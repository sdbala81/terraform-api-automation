output "audience" {
  value       = auth0_resource_server.api_server.identifier
  description = "The audience of the Auth0 resource server."

}
