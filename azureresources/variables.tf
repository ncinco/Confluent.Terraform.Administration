variable "resource_group_name" {
  description = "Name of resource group"
  type        = string
}

variable "resource_group_location" {
  description = "Location of resource group"
  type        = string
}

variable "key_vault_name" {
  description = "Key Vault name"
  type        = string
}

variable "key_vault_sku_name" {
  description = "SKU name"
  type        = string
}

variable "key_vault_soft_delete_retention_days" {
  description = "Soft delete retention days."
  type        = string
}