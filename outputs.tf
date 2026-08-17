output "storage_blob_id" {
  description = "ID Storage Blob"
  value       = azurerm_storage_blob.example.id
}

output "storage_blob_url" {
  description = "URL Storage Blob"
  value       = azurerm_storage_blob.example.url
}