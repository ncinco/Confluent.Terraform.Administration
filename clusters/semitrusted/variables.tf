variable "organisation_id" {
  description = "Organisaton Id"
  type        = string
  default     = "4bcb09a9-ed92-465c-b6b6-3175ba61fe66"
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