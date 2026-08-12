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