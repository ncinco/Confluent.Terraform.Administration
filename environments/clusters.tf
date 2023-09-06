resource "confluent_kafka_cluster" "standard" {
  for_each     = { for kafka_cluster in var.kafka_clusters : kafka_cluster.request_id => kafka_cluster }

  display_name = each.value.display_name
  availability = each.value.availability
  cloud        = each.value.cloud
  region       = each.value.region

  standard {}

  environment {
    id = confluent_environment.environment.id
  }

  lifecycle {
    prevent_destroy = true
  }
}