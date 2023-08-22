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

data "confluent_schema_registry_region" "schema_registry_region" {
  cloud   = var.cloud
  region  = var.region
  package = var.package
}

resource "confluent_schema_registry_cluster" "schema_registry_cluster" {
  package = data.confluent_schema_registry_region.schema_registry_region.package

  environment {
    id = confluent_environment.environment.id
  }

  region {
    id = data.confluent_schema_registry_region.schema_registry_region.id
  }

  lifecycle {
    prevent_destroy = true
  }
}