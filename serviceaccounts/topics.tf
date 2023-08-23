resource "confluent_kafka_topic" "orders" {
  kafka_cluster {
    id = "lkc-ny30qd"
  }
  topic_name         = "orders"
  rest_endpoint      = "https://pkc-4n66v.australiaeast.azure.confluent.cloud:443"
  credentials {
    key    = "AX2D7PJ4PYLUBRL6"
    secret = "zrt0g5L/KTE9YE9xhvhfhccBK9v117GCFtcXKLGVBIxwNlPT59/YOwlPvUgOX8rX"
  }

  lifecycle {
    prevent_destroy = true
  }
}