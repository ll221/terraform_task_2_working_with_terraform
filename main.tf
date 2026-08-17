resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}


resource "azurerm_storage_container" "example" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.example.name
  container_access_type = "private"
}


data "archive_file" "code_archive" {
  type        = "zip"
  source_dir  = path.module
  output_path = "${path.module}/code_archive.zip"

  excludes = [
    "code_archive.zip",
    ".terraform",
    ".terraform.lock.hcl",
    "tfplan",
    "terraform.tfstate",
    "terraform.tfstate.backup",
  ]
}

resource "azurerm_storage_blob" "example" {
  name                   = var.blob_name
  storage_account_name   = azurerm_storage_account.example.name
  storage_container_name = azurerm_storage_container.example.name
  type                   = "Block"
  source                 = data.archive_file.code_archive.output_path
  content_md5            = data.archive_file.code_archive.output_md5
}