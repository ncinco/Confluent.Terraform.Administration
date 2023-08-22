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

resource "confluent_environment" "dev" {
  display_name = "dev"

  lifecycle {
    prevent_destroy = true
  }
}

resource "confluent_environment" "uat" {
  display_name = "uat"

  lifecycle {
    prevent_destroy = true
  }
}

resource "confluent_environment" "prod" {
  display_name = "prod"

  lifecycle {
    prevent_destroy = true
  }
}