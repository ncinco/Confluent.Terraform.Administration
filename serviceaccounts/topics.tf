resource "confluent_kafka_topic" "orders" {
  kafka_cluster {
    id = "lkc-r2ozw7"
  }
  topic_name         = "orders"
  rest_endpoint      = "https://pkc-4n66v.australiaeast.azure.confluent.cloud:443"
  credentials {
    key    = "MSGUP6HLIGJKOEJC"
    secret = "xhYeUxCJDPwniIXIOEzQDUoguY9zr6f2M/vMK1uvvZ7DYTJIkFDM1wFGxdKtEWVl"
  }

  lifecycle {
    prevent_destroy = true
  }
}