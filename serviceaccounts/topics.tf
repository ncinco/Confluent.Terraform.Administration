resource "confluent_kafka_topic" "orders" {
  kafka_cluster {
    id = "lkc-r2ozw7"
  }
  topic_name         = "orders"
  rest_endpoint      = "https://pkc-4n66v.australiaeast.azure.confluent.cloud:443"
  credentials {
    key    = "IMXAE45QTPK7UCQB"
    secret = "I7kRcZDy/39FMgltA1gRaMALGs4xlm0VSVbsrMKBu21HiMgab34AE44rp2uVbtTv"
  }

  lifecycle {
    prevent_destroy = true
  }
}