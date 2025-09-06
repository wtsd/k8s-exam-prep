#!/usr/bin/env bash
# Render kustomize overlay (requires kubectl >= 1.14 with kustomize integration)
kubectl kustomize "$1"
