variable "auth0_domain" {
  description = "Auth0 domain"
  type        = string
}

variable "auth0_client_id" {
  description = "Auth0 Client ID"
  type        = string
}

variable "auth0_client_secret" {
  description = "Auth0 Client Secret"
  type        = string
}

variable "organization_name" {
  description = "Name of the organization"
  type        = string
}

variable "subscriptions" {
  description = "Subscriptions associated with the organization"
  type        = string
}

variable "environment" {
  description = "Deployment environment (e.g., prod, dev)"
  type        = string
}


variable "organization_administrator_name" {
  description = "The full name of the organization administrator."
  type        = string
}

variable "organization_administrator_email" {
  description = "The email of the organization administrator."
  type        = string
}

variable "organization_administrator_password" {
  description = "The password for the organization administrator."
  type        = string
}
