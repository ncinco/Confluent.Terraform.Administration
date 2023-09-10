variable "organisation_id" {
  description = "Organisaton Id"
  type        = string
}

variable "environment_id" {
  description = "Environment Id"
  type        = string
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