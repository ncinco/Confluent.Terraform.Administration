resource "confluent_kafka_topic" "kafka_topics" {
  for_each           = { for topic in var.topics : topic.name => topic }
  
  kafka_cluster {
    id = "lkc-ny30qd"
  }
  topic_name         = each.value.name
  partitions_count   = each.value.partitions_count
  rest_endpoint      = "https://pkc-4n66v.australiaeast.azure.confluent.cloud:443"
  config = {
    "cleanup.policy" = each.value.cleanup_policy
  }

  lifecycle {
    prevent_destroy  = true
  }
}