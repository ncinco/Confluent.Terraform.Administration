resource "confluent_service_account" "service_account_cluster_operator" {
  display_name = "cluster-operator-${lower(var.environment)}"
  description  = "Cluster Operator ${upper(var.environment)}"
}