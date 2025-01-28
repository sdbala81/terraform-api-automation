output "client_id" {
  value       = auth0_client.api_client.client_id
  description = "The client ID of the Auth0 API client."
}


output "client_secret" {
  value       = auth0_client.api_client.client_secret
  sensitive   = true
  description = "The client secret of the Auth0 API client."
}
