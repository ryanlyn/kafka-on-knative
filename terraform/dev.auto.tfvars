project_id = "develop-245608"
region     = "australia-southeast1"

name                   = "dev-knative"
cluster_location       = "australia-southeast1-a"
min_kubernetes_version = "1.15"

gp_machine_type   = "n1-standard-4" // recommended for Istio + Knative
gp_disk_size_gb   = 100
gp_min_node_count = 1
gp_max_node_count = 10  // recommended for Istio + Knative