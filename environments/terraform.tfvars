schema_registry = {
  cloud         = "AZURE"
  region        = "southeastasia"
  package       = "ESSENTIALS"
}

kafka_clusters = [
{
  request_id   = 1
  display_name = "TrustedCluster0"
  availability = "SINGLE_ZONE"
  cloud        = "AZURE"
  region       = "australiaeast"
},
{
  request_id   = 2
  display_name = "SemiTrustedCluster0"
  availability = "SINGLE_ZONE"
  cloud        = "AZURE"
  region       = "australiaeast"
}
]