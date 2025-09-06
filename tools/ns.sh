#!/usr/bin/env bash
# Set/print current namespace in this shell
if [[ -n "$1" ]]; then export KUBE_NS="$1"; echo "Namespace set to $KUBE_NS"; else echo "${KUBE_NS:-default}"; fi
