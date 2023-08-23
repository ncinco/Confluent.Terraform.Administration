/* resource "confluent_role_binding" "role_binding_cluster_operator_dev_cluster_0" {
  principal   = "User:${confluent_service_account.service_account_cluster_operator_dev.id}"
  role_name   = "Operator"
  crn_pattern = "crn://confluent.cloud/organization=${var.organisation_id}/environment=${var.environment_id}/cloud-cluster=lkc-r2ozw7"
}

resource "confluent_role_binding" "role_binding_cluster_operator_dev_cluster_1" {
  principal   = "User:${confluent_service_account.service_account_cluster_operator_dev.id}"
  role_name   = "Operator"
  crn_pattern = "crn://confluent.cloud/organization=${var.organisation_id}/environment=${var.environment_id}/cloud-cluster=lkc-23q862"
} */