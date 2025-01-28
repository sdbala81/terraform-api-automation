output "organization_id" {
  description = "The ID of the Auth0 organization"
  value       = auth0_organization.organization.id
}

output "organization_name" {
  description = "The name of the Auth0 organization"
  value       = auth0_organization.organization.name
}
