variable "organisation_id" {
  description = "Organisaton Id"
  type = string
  default = "4bcb09a9-ed92-465c-b6b6-3175ba61fe66"
}

variable "environment" {
  description = "Name of environment"
  type        = string
}

# https://docs.confluent.io/cloud/current/stream-governance/packages.html#sr-regions
# https://docs.confluent.io/cloud/current/stream-governance/packages.html#cloud-providers-and-region-support
# Schema Registry clusters can be upgraded from ESSENTIALS to ADVANCED, but cannot be downgraded from ADVANCED to ESSENTIALS.
variable "schema_registry" {
  description = "Schema Registry Details"
  type      = object({
    cloud   = string
    region  = string
    package = string
  })
}

variable "kafka_clusters" {
  description = "Kafka Cluster Details"
  type = list(object({
    request_id   = string
    display_name = string
    availability = string
    cloud        = string
    region       = string
  }))
}