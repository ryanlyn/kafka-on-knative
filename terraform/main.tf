resource "google_container_cluster" "this" {
  name        = "${var.name}-cluster"
  description = "Google GKE Cluster for Stack: ${var.name}"
  location    = var.cluster_location

  min_master_version       = var.min_kubernetes_version
  remove_default_node_pool = true
  initial_node_count       = 1

  // setting empty username and password fields disable Basic Authentication
  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = true
    }
  }
}

resource "google_container_node_pool" "this" {
  name     = "${var.name}-gp-node-pool"
  location = var.cluster_location
  cluster  = google_container_cluster.this.name

  version            = var.min_kubernetes_version
  initial_node_count = var.gp_min_node_count

  management {
    auto_repair  = true
    auto_upgrade = false
  }

  autoscaling {
    min_node_count = var.gp_min_node_count
    max_node_count = var.gp_max_node_count
  }

  node_config {
    preemptible  = true
    machine_type = var.gp_machine_type

    metadata = {
      disable-legacy-endpoints = "true"
    }

    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
      "https://www.googleapis.com/auth/devstorage.read_only"
    ]
  }
}