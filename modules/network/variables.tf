variable "vnet_name" {
  type        = string
  description = "name of the vnet"
  validation {
    condition     = length(trimspace(var.vnet_name)) > 0
    error_message = "vnet name should not be empty"
  }
}

variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
  validation {
    condition     = length(trimspace(var.resource_group_name)) > 0
    error_message = "resource group name should not be empty"
  }
}

variable "location" {
  type        = string
  description = "name of the location"
  validation {
    condition     = length(trimspace(var.location)) > 0
    error_message = "location should not be empty"
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

variable "tags" {
  type        = map(string)
  description = "tags for vnet"
  validation {
    condition     = length(var.tags) > 0
    error_message = "atleast one tag should be provided"
  }

}