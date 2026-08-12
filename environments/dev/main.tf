module "resource_group" {
  source              = "../../modules/resource-group"
  resource_group_name = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

module "network" {
  source              = "../../modules/network"
  resource_group_name = module.resource_group.resource_group_name
  location            = module.resource_group.location
  vnet_name           = var.vnet_name
  address_space       = var.address_space
  tags                = var.tags
}

module "subnet" {
  source              = "../../modules/subnet"
  resource_group_name = module.resource_group.resource_group_name
  vnet_name           = module.network.vnet_name
  subnets             = var.subnets
}