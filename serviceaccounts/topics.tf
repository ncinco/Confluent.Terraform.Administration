resource "confluent_kafka_topic" "orders" {
  kafka_cluster {
    id = "lkc-ny30qd"
  }
  topic_name         = "orders"
  rest_endpoint      = "https://pkc-4n66v.australiaeast.azure.confluent.cloud:443"
  credentials {
    key    = "KYUQP4W532RSTGTB"
    secret = "Abe7WYzHgNnBlq1j3gUBeU9aXOIf8wUeVdBVmFjpXyFMXOjH554aIeJ25z4vXMu1"
  }

  lifecycle {
    prevent_destroy = true
  }
}