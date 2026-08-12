output "subnet_ids" {
  description = "value of subnetids"
  value = {
    for subnet_name, subnet in azurerm_subnet.this :
    subnet_name => subnet.id
  }
}