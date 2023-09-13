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

locals {
  cluster_requests = yamldecode(file("${path.module}/cluster_requests.yaml"))["kafka_clusters"]
}

module "clusters" {
  source = "../../modules/clusters"

  organisation_id  = var.organisation_id
  environment_id   = var.environment_id
  kafka_clusters   = local.cluster_requests
}