resource "confluent_service_account" "service_account_cluster_operator_prod" {
  display_name = "Cluster Operator (prod)"
  description  = "Cluster Operator (prod)"
}

resource "confluent_role_binding" "role_binding_cluster_operator_prod_cluster_0" {
  principal   = "User:${confluent_service_account.service_account_cluster_operator_prod.id}"
  role_name   = "Operator"
  crn_pattern = "crn://confluent.cloud/organization=${var.organisation_id}/environment=${var.environment_id}/cloud-cluster=lkc-ygj9w6"
}

resource "confluent_role_binding" "role_binding_cluster_operator_prod_cluster_1" {
  principal   = "User:${confluent_service_account.service_account_cluster_operator_prod.id}"
  role_name   = "Operator"
  crn_pattern = "crn://confluent.cloud/organization=${var.organisation_id}/environment=${var.environment_id}/cloud-cluster=lkc-wzxywj"
}