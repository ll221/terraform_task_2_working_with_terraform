variable "resource_group_name" {
  type        = string
  description = "Name of the Azure resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "West Europe"
}

variable "storage_account_name" {
  type        = string
  description = "Globally unique name of the storage account (lowercase letters/numbers, 3-24 chars)"
}

variable "container_name" {
  type        = string
  description = "Name of the storage container"
}

variable "blob_name" {
  type        = string
  description = "Name of the storage blob"
}