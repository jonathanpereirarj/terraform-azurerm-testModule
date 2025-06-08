terraform {
  required_version = ">=1.12.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.30.0"
    }
  }
}

## PROVIDERS

provider "azurerm" {
  features {}
  subscription_id = "9734ed68-621d-47ed-babd-269110dbacb1"

}

## RESOURCES

resource "azurerm_storage_account" "secure_storage_account" {
  resource_group_name           = var.resource_group_name
  name                          = var.storage_account_name
  location                      = var.az_location
  account_tier                  = var.storage_account_account_tier
  account_replication_type      = var.storage_account_replication_type
  public_network_access_enabled = var.storage_account_network_public_access
}