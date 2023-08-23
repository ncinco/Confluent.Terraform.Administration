resource "confluent_kafka_topic" "orders" {
  kafka_cluster {
    id = "lkc-r2ozw7"
  }
  topic_name         = "orders"
  rest_endpoint      = "https://pkc-4n66v.australiaeast.azure.confluent.cloud:443"
  credentials {
    key    = "GAPI3WNWUS2AQPXJ"
    secret = "3N317jyoKg0UU9ni2Sg5ZXo3WRd5OU8+24ggr/QRuHrsfnu98C0rQIs/eipEeg/0"
  }

  lifecycle {
    prevent_destroy = true
  }
}