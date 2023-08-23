resource "confluent_kafka_topic" "orders" {
  kafka_cluster {
    id = "lkc-ny30qd"
  }
  topic_name         = "orders"
  rest_endpoint      = "confluent_kafka_cluster.basic-cluster.rest_endpoint"
  credentials {
    key    = "NFRPGV2QI4I3B4SM"
    secret = "XN0VrINcwaNtBPpgbBD+UDMcwOL4kP/wmaTKLt+T0pcOb+zllEiqXyGqYG+XzFbv"
  }

  lifecycle {
    prevent_destroy = true
  }
}