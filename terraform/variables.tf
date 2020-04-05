variable "project_id" {
  type        = string
  description = "Google Cloud project ID"
}

variable "region" {
  type        = string
  description = "Default Google Cloud region"
  default     = "australia-southeast1"
}

variable "cluster_location" {
  type        = string
  description = "Cluster location (either zonal or regional)"
  default     = "australia-southeast1-a"
}

variable "name" {
  type        = string
  description = "Stack name"
}

variable "min_kubernetes_version" {
  type        = string
  description = "Minimum Kubernetes version for masters and node pools"
  default     = "1.15"
}

variable "gp_machine_type" {
  type        = string
  description = "Machine type to use for the general-purpose node pool"
  default     = "n1-standard-1"
}

variable "gp_disk_size_gb" {
  type        = number
  description = "Size of disk attached to each node"
  default     = 100
}

variable "gp_min_node_count" {
  type        = number
  description = "The minimum number of nodes PER ZONE in the general-purpose node pool"
  default     = 1
}

variable "gp_max_node_count" {
  type        = number
  description = "The maximum number of nodes PER ZONE in the general-purpose node pool"
  default     = 6
}