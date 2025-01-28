resource "auth0_client" "api_client" {
  name     = "${var.organization_name}-API-M2M"
  app_type = "non_interactive"
  client_metadata = {
    subscriptions = var.subscriptions
  }
}
