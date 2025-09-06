#!/usr/bin/env bash
# kubectl quality-of-life wrapper: namespace sticky & shortcuts
set -e
NS="${KUBE_NS:-default}"
if [[ "$1" == "-n" ]]; then shift; NS="$1"; shift; fi
kubectl -n "$NS" "$@"
