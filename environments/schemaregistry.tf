data "confluent_schema_registry_region" "schema_registry_region" {
  cloud   = var.schema_registry.cloud
  region  = var.schema_registry.region
  package = var.schema_registry.package
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