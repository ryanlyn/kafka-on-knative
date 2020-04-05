#! /bin/bash env

grafana_pod=kubectl get pods --namespace knative-monitoring --selector=app=grafana --output=jsonpath="{.items..metadata.name}"
kubectl port-forward --namespace knative-monitoring "${grafana_pod}" 3000
