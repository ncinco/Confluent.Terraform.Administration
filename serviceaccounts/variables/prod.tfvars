environment     = "prod"
environment_id  = "env-979qzm"

role_bindings_clusters = [
  {
    request_id  = "1"
    principal   = "sa-95rqm0"
    role_name   = "Operator"
    cluster_id  = "lkc-9wr327"
  },
  {
    request_id  = "2"
    principal   = "sa-95rqm0"
    role_name   = "Operator"
    cluster_id  = "lkc-xrz5nq"
  }
]

topics = [
  { name = "accounts", partitions_count = 3, cleanup_policy = "compact" },
  { name = "transactions", partitions_count = 3, cleanup_policy = "compact" }
]