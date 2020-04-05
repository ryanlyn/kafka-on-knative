# Kafka on Knative
The repository bootstraps a GKE cluster through Terraform and runs a Knative sink that consumes events from a Kafka producer.

## Prerequisites
1. Terraform
2. GCP Cloud SDK
3. Kubectl

## Setting Up the Kubernetes Cluster on GKE
1. Use an existing GCP service account or create a new service account with the following roles:
   * Kubernetes Engine Admin
   * Storage Admin (used for Terraform GCS backend)
   * Service Account User
   * Compute Viewer (used for retrieving the client certificate)
2. Move JSON credentials to `./account.json`. This will be used for both the creation of the cluster and mutating the shared terraform state 
3. Navigate to the `./terraform` directory
4. Run `terraform init`
5. Modify the `dev.auto.tfvars` file
6. Run `terraform apply`

## Setting Up `kubectl`
1. Run the following:
```bash
gcloud container clusters get-credentials <name>-cluster --zone <cluster_location> --project <project_id>
```