environment     = "uat"

schema_registry = {
  cloud         = "AZURE"
  region        = "southeastasia"
  package       = "ESSENTIALS"
}

kafka_clusters = {[
  (
    display_name = "Cluster_0"
    availability = "SINGLE_ZONE"
    cloud        = "AZURE"
    region       = "australiaeast"
  ),
  (
    display_name = "Cluster_1"
    availability = "SINGLE_ZONE"
    cloud        = "AZURE"
    region       = "australiaeast"
  )
]}