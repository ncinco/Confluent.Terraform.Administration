/* resource "confluent_kafka_topic" "orders" {
  kafka_cluster {
    id = "lkc-r2ozw7"
  }
  topic_name         = "orders"
  rest_endpoint      = "https://pkc-4n66v.australiaeast.azure.confluent.cloud:443"
  credentials {
    key    = "TBMOGWKERJWXJPUQ"
    secret = "CmrEG9kfDhYPkjIjfxAxTD/gZLRwPcTxNapRlK09keYI50f+vaXJXPi9vJrZPH2C"
  }

  lifecycle {
    prevent_destroy = true
  }
} */