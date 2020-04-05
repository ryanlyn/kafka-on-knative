#! /bin/bash env
KNATIVE_VERSION="v0.13.0"

# Install CRDs
kubectl apply --filename https://github.com/knative/serving/releases/download/${KNATIVE_VERSION}/serving-crds.yaml
# Install the core components of Serving
kubectl apply --filename https://github.com/knative/serving/releases/download/${KNATIVE_VERSION}/serving-core.yaml

# Install Knative Istio controller
kubectl apply --filename https://github.com/knative/serving/releases/download/${KNATIVE_VERSION}/serving-istio.yaml

# Configure Knative Serving to use xip.io as the default DNS suffix.
# This will only work if the cluster LoadBalancer service exposes an IPv4 address, 
# so it will not work with IPv6 clusters, AWS, or local setups like Minikube.
kubectl apply --filename https://github.com/knative/serving/releases/download/${KNATIVE_VERSION}/serving-default-domain.yaml

