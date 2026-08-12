variable "resource_group_name" {
  type        = string
  description = "Name of the Azure Resource group"
  validation {
    condition     = length(trimspace(var.resource_group_name)) > 0
    error_message = "resource group name should not be empty"
  }
}

variable "location" {
  type        = string
  description = "location of the resource group"
  validation {
    condition     = length(trimspace(var.location)) > 0
    error_message = "location should not be empty"
  }
}

variable "tags" {
  type        = map(string)
  description = "tags of the resource group"
  default     = {}
  validation {
    condition     = length(var.tags) > 0
    error_message = "tags should not be empty"
  }
}
variable "vnet_name" {
  type        = string
  description = "name of the vnet"
  validation {
    condition     = length(trimspace(var.vnet_name)) > 0
    error_message = "vnet name should not be empty"
  }
}
variable "address_space" {
  type        = list(string)
  description = "address space for vnet"
  validation {
    condition     = length(var.address_space) > 0
    error_message = "atleast one address space should be provided"
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