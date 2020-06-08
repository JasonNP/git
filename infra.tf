variable numero {
  default=2
}

resource "azurerm_storage_account" "example" {
  name                     = "stac"${var.numero}
  resource_group_name      = RSGREU2XXXXD01
  location                 = eastus2
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "develop"
  }
}