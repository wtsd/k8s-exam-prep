#!/usr/bin/env bash
set -euo pipefail
echo "[*] Installing metrics-server..."
kubectl apply -f https://github.com/kubernetes-sigs/metrics-server/releases/latest/download/components.yaml
kubectl -n kube-system patch deployment metrics-server -p '{"spec":{"template":{"spec":{"containers":[{"name":"metrics-server","args":["--kubelet-insecure-tls","--kubelet-preferred-address-types=InternalIP,ExternalIP,Hostname"]}]}}}}' || true
kubectl wait --for=condition=available -n kube-system deployment/metrics-server --timeout=120s
echo "[*] metrics-server installed."
