resource "confluent_service_account" "service_account_cluster_operator_uat" {
  display_name = "Cluster Operator (uat)"
  description  = "Cluster Operator (uat)"
}

resource "confluent_role_binding" "role_binding_cluster_operator_uat_cluster_0" {
  principal   = "User:${confluent_service_account.service_account_cluster_operator_uat.id}"
  role_name   = "Operator"
  crn_pattern = "crn://confluent.cloud/organization=${var.organisation_id}/environment=${var.environment_id}/cloud-cluster=lkc-0j7869"
}

resource "confluent_role_binding" "role_binding_cluster_operator_uat_cluster_1" {
  principal   = "User:${confluent_service_account.service_account_cluster_operator_uat.id}"
  role_name   = "Operator"
  crn_pattern = "crn://confluent.cloud/organization=${var.organisation_id}/environment=${var.environment_id}/cloud-cluster=lkc-8mjq6m"
}