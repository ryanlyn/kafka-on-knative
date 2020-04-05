terraform {
  required_version = "~> 0.12.24"

  backend "gcs" {
    bucket      = "ryanlyn-terraform-state"
    prefix      = "kafka-on-knative"
    credentials = "../account.json"
  }
}