#! /bin/bash env
KNATIVE_VERSION="v0.13.0"

# Install core components of Knative Observability
kubectl apply --filename https://github.com/knative/serving/releases/download/${KNATIVE_VERSION}/monitoring-core.yaml

# Install Prometheus + Grafana stack
kubectl apply --filename https://github.com/knative/serving/releases/download/${KNATIVE_VERSION}/monitoring-metrics-prometheus.yaml
# Install ELK stack
kubectl apply --filename https://github.com/knative/serving/releases/download/${KNATIVE_VERSION}/monitoring-logs-elasticsearch.yaml