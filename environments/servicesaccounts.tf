resource "confluent_service_account" "service_account_cluster_operator" {
  display_name = "Cluster Operator"
  description  = "Cluster Operator"
}

resource "confluent_role_binding" "role_binding_cluster_operator" {
  principal   = "User:${confluent_service_account.service_account_cluster_operator.id}"
  role_name   = "Operator"
  crn_pattern = "crn://confluent.cloud/organization=${var.organisation_id}/environment=${var.environment_id}/cloud-cluster=lkc-r2ozw7"
}

resource "confluent_role_binding" "role_binding_cluster_operator" {
  principal   = "User:${confluent_service_account.service_account_cluster_operator.id}"
  role_name   = "Operator"
  crn_pattern = "crn://confluent.cloud/organization=${var.organisation_id}/environment=${var.environment_id}/cloud-cluster=lkc-23q862"
}