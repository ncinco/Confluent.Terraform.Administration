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

module "clusters" {
  source = "../../modules/clusters"

  organisation_id = var.organisation_id
  kafka_clusters = var.kafka_clusters
}