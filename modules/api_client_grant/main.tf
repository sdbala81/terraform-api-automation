resource "auth0_client_grant" "api_client_grant" {
  client_id = var.api_client_id
  audience  = var.api_audience

  scopes = ["read:users", "write:users"]

  depends_on = [
    auth0_client.api_client,
    auth0_resource_server.api_server
  ]
}
