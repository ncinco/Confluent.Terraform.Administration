resource "confluent_kafka_topic" "kafka_topics" {
  for_each           = { for topic in var.topics : topic.name => topic }
  
  kafka_cluster {
    id = "lkc-ny30qd"
  }
  topic_name         = each.value.name
  partitions_count   = each.value.partitions_count
  rest_endpoint      = "https://pkc-4n66v.australiaeast.azure.confluent.cloud:443"

  # kafka cluster level api key
  credentials {
    key              = "DCP4FHIJ67I2YYFU"
    secret           = "O8rJv2Ergg1CD3qfjcaf4eO11xT/ou+1T5C6V5+DWt1S14d0RSbLx+XudQVWieuv"
  }
  config = {
    "cleanup.policy" = each.value.cleanup_policy
  }

  lifecycle {
    prevent_destroy  = true
  }
}