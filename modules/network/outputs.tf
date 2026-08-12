output "vnet_name" {
  value       = azurerm_virtual_network.this.name
  description = "name of the vnet"
}

output "vnet_id" {
  value       = azurerm_virtual_network.this.id
  description = "id of the vnet"
}