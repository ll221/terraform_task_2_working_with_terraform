variable "resource_group_name" {
  description = "Назва Resource Group в Azure"
  type        = string
  default     = "example-resources"
}

variable "location" {
  description = "Регіон Azure для ресурсів"
  type        = string
  default     = "West Europe"
}

variable "storage_account_name" {
  description = "Назва Storage Account (лише малі літери й цифри, 3-24 символи)"
  type        = string
  default     = "examplestorageacc"
}

variable "container_name" {
  description = "Назва Storage Container"
  type        = string
  default     = "example-container"
}

variable "blob_name" {
  description = "Назва Storage Blob"
  type        = string
  default     = "example-code-archive.zip"
}