environment     = "dev"
environment_id  = "env-vrjzn0"

role_bindings_clusters = [
  {
    request_id  = "1"
    principal   = "sa-qz7n3d"
    role_name   = "Operator"
    cluster_id  = "lkc-ny30qd"
  },
  {
    request_id  = "2"
    principal   = "sa-qz7n3d"
    role_name   = "Operator"
    cluster_id  = "lkc-3ng01j"
  }
]

topics = [
  { name = "accounts", partitions_count = 3, cleanup_policy = "compact" },
  { name = "transactions", partitions_count = 3, cleanup_policy = "compact" }
]