#! /bin/bash env
# adapted from https://medium.com/google-cloud/how-to-properly-install-knative-on-gke-f39a1274cd4f

ISTIO_VERSION=1.4.6
kubectl apply -f https://raw.githubusercontent.com/knative/serving/master/third_party/istio-${ISTIO_VERSION}/istio-crds.yaml
kubectl apply -f https://raw.githubusercontent.com/knative/serving/master/third_party/istio-${ISTIO_VERSION}/istio-minimal.yaml

kubectl apply -f https://raw.githubusercontent.com/knative/serving/master/third_party/istio-${ISTIO_VERSION}/istio-knative-extras.yaml