output "resource_group_name" {
  value       = azurerm_resource_group.this.name
  description = "output of resource group name"
}
output "resource_group_id" {
  value       = azurerm_resource_group.this.id
  description = "output of resource ID"
}
output "location" {
  value = azurerm_resource_group.this.location
  description = "output of location"
}