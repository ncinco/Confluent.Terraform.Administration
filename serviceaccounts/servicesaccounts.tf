resource "confluent_service_account" "service_account_cluster_operator" {
  display_name = "cluster-operator-${lower(var.environment)}"
  description  = "Cluster Operator ${upper(var.environment)}"
}

resource "confluent_service_account" "service_account_environment_admin" {
  display_name = "environment-admin-${lower(var.environment)}"
  description  = "Environment Admin ${upper(var.environment)}"
}