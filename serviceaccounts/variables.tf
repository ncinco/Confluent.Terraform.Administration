variable "organisation_id" {
  description   = "Organisaton Id"
  type          = string
  default       = "4bcb09a9-ed92-465c-b6b6-3175ba61fe66"
}

variable "environment" {
  description   = "Name of environment"
  type          = string
}

variable "environment_id" {
  description   = "Id of environment"
  type          = string
}

variable "role_bindings_clusters" {
  description = "value"
  type          = list(object({
    request_id  = string
    principal   = string
    role_name   = string
    cluster_id  = string
  }))
}

variable "topics" {
  description = "List of kafka topic(s) for a cluster"
  type = list(object({
    name = string
    partitions_count = number
    cleanup_policy = string
  }))
}