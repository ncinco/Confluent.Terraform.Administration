resource "confluent_kafka_topic" "orders" {
  kafka_cluster {
    id = "lkc-ny30qd"
  }
  topic_name         = "orders"
  rest_endpoint      = "https://pkc-4n66v.australiaeast.azure.confluent.cloud:443"
  credentials {
    key    = "T5KFXEB2ZSINK6VS"
    secret = "nYxPXolXKmgMACGQ9p/WwKfwKCQFU81D3DnWYeN+oQ5cDIToqPF09FyD7MqzEcbe"
  }

  lifecycle {
    prevent_destroy = true
  }
}