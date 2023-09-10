resource "confluent_environment" "environment" {
  display_name = var.environment
  lifecycle {
    prevent_destroy = true
  }
}