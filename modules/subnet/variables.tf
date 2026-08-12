variable "resource_group_name" {
  description = "name of the resource group"
  type        = string
  validation {
    condition     = length(trimspace(var.resource_group_name)) > 0
    error_message = "resource group name should not be empty"
  }

}

variable "vnet_name" {
  description = "name of the vnet"
  type        = string
  validation {
    condition     = length(trimspace(var.vnet_name)) > 0
    error_message = "vnet name should not be empty"
  }
}

variable "subnets" {
  description = "map of subnet configuration"
  type = map(object({
    address_prefix = string

  }))
  validation {
    condition     = length(var.subnets) > 0
    error_message = "atleast one subnet prefix should be present"
  }
}