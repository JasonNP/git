variable numero {
  default=01
}

resource "azurerm_storage_account" "example" {
  name                     = "stac_p2_"${var.numero}
  resource_group_name      = RSGREU2XXXXD01
  location                 = eastus2
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "develop"
  }
}