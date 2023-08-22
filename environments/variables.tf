variable "environment" {
  description = "Name of environment"
  type        = string
}

# https://docs.confluent.io/cloud/current/stream-governance/packages.html#sr-regions
variable "schema_registry_cloud" {
  description = "Schema Registry Cloud Provider"
  type        = string
}

# https://docs.confluent.io/cloud/current/stream-governance/packages.html#cloud-providers-and-region-support
variable "schema_registry_region" {
  description = "Schema Registry Region"
  type        = string
}

# ESSENTIALS, ADVANCED
# Schema Registry clusters can be upgraded from ESSENTIALS to ADVANCED, but cannot be downgraded from ADVANCED to ESSENTIALS.
variable "schema_registry_package" {
  description = "Schema Registry Package"
  type        = string
}