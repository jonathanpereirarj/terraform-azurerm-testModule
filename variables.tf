#Storage Account variables

variable "resource_group_name" {
  type    = string
  default = "813-f060a93a-hands-on-with-terraform-on-azure"
}

variable "storage_account_name" {
  type    = string
  default = "securestorageaccount"
}

variable "storage_account_network_public_access" {
  default = "false"
}

variable "storage_account_account_tier" {
  type    = string
  default = "Standard"
}

variable "az_location" {
  type    = string
  default = "eastus"
}

variable "storage_account_replication_type" {
  type    = string
  default = "LRS"
}