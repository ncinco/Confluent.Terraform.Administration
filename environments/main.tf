terraform {
  required_providers {
    confluent = {
      source = "confluentinc/confluent"
      version = "1.51.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.57.0"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

resource "confluent_environment" "environment" {
  display_name = var.environment
  lifecycle {
    prevent_destroy = true
  }
}