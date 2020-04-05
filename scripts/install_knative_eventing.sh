#! /bin/bash env
KNATIVE_VERSION="v0.13.0"

# Install CRDs
kubectl apply --filename https://github.com/knative/eventing/releases/download/${KNATIVE_VERSION}/eventing-crds.yaml
# Install the core components of Knative Eventing
kubectl apply --filename https://github.com/knative/eventing/releases/download/${KNATIVE_VERSION}/eventing-core.yaml
