#!/bin/bash

NAMESPACE=${1:-incident-demo}

mkdir -p incident-data

echo "===== PODS =====" > incident-data/incident.txt
kubectl get pods -n "$NAMESPACE" >> incident-data/incident.txt

echo -e "\n===== EVENTS =====" >> incident-data/incident.txt
kubectl get events -n "$NAMESPACE" --sort-by=.lastTimestamp >> incident-data/incident.txt

echo -e "\n===== LOGS =====" >> incident-data/incident.txt
kubectl logs -n "$NAMESPACE" deployment/demo-app --all-containers=true >> incident-data/incident.txt 2>&1

echo -e "\n===== DESCRIBE =====" >> incident-data/incident.txt
kubectl describe deployment demo-app -n "$NAMESPACE" >> incident-data/incident.txt

cat incident-data/incident.txt
