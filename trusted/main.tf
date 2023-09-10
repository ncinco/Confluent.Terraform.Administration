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

module "environments" {
  source = "../modules/environments"

  organisation_id = var.organisation_id
  environment = var.environment
  schema_registry = var.schema_registry
  kafka_clusters = var.kafka_clusters

  topics = var.topics
}