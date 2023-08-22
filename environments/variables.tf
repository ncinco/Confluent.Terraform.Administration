variable "environment" {
  description = "Name of environment"
  type        = string
}

# https://docs.confluent.io/cloud/current/stream-governance/packages.html#sr-regions

variable "cloud" {
  description = "Name of environment"
  type        = string
}

# https://docs.confluent.io/cloud/current/stream-governance/packages.html#cloud-providers-and-region-support
variable "region" {
  description = "Name of environment"
  type        = string
}

# ESSENTIALS, ADVANCED
# Schema Registry clusters can be upgraded from ESSENTIALS to ADVANCED, but cannot be downgraded from ADVANCED to ESSENTIALS.
variable "package" {
  description = "Name of environment"
  type        = string
}