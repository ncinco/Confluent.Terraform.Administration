resource "confluent_kafka_topic" "orders" {
  kafka_cluster {
    id = "lkc-r2ozw7"
  }
  topic_name         = "orders"
  rest_endpoint      = "https://pkc-4n66v.australiaeast.azure.confluent.cloud:443"
  credentials {
    key    = "6WJKCRUGVPJW7JO3"
    secret = "u/18AwszYL2knfq5XwN3LxF/G1xiKnlbPFGjYa/D6eoJPLb31eu6ztDYiIX6Xk7b"
  }

  lifecycle {
    prevent_destroy = true
  }
}