provider "auth0" {
  domain        = var.auth0_domain
  client_id     = var.auth0_client_id
  client_secret = var.auth0_client_secret
}

terraform {
  required_version = ">= 1.7.0"

  required_providers {
    auth0 = {
      source  = "auth0/auth0"
      version = "1.5.0"
    }
  }
}
