component "api_client" {
  source = "./modules/api_client"

  inputs = {
    name          = var.organization_name
    subscriptions = var.subscriptions
  }
}
