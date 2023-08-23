/* resource "confluent_role_binding" "role_binding_cluster" {
  for_each    = { for role_bindings_cluster in var.role_bindings_clusters : role_bindings_cluster.request_id => role_bindings_cluster }

  principal   = "User:${each.value.principal}"
  role_name   = "${each.value.role_name}"
  crn_pattern = "crn://confluent.cloud/organization=${var.organisation_id}/environment=${var.environment_id}/cloud-cluster=${each.value.cluster_id}"
} */

/* resource "confluent_role_binding" "role_binding_cluster" {
  principal   = "User:sa-68x1dq"
  role_name   = "Operator"
  crn_pattern = "crn://confluent.cloud/organization=4bcb09a9-ed92-465c-b6b6-3175ba61fe66/environment=env-gnz59v/cloud-cluster=lkc-r2ozw7"
} */