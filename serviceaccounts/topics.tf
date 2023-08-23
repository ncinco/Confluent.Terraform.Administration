resource "confluent_kafka_topic" "orders" {
  kafka_cluster {
    id = "lkc-ny30qd"
  }
  topic_name         = "orders"
  rest_endpoint      = "https://pkc-4n66v.australiaeast.azure.confluent.cloud:443"
  credentials {
    key    = "FYV62S7ZL3DF3PTI"
    secret = "DT6i/7HImfOrWDtXrT2M65Xg/5+6YO4hVf80zGgYprhDMm9FuaL2dxJpFlZO7YV3"
  }

  lifecycle {
    prevent_destroy = true
  }
}