SHELL := /bin/bash

KIND_CLUSTER ?= k8s-prep
KIND_CONFIG  ?= kind/kind-config.yaml

LAB ?= labs/00-hello-pod

.PHONY: kind-up kind-down addons lab kustomize helm fmt validate help

help:
\t@echo "Targets:"
\t@echo "  kind-up        Create a local kind cluster"
\t@echo "  addons         Install metrics-server and ingress-nginx"
\t@echo "  lab LAB=...    Apply all manifests in the specified lab directory"
\t@echo "  kustomize      Build the sample kustomize overlay"
\t@echo "  helm           Install/upgrade the sample Helm chart"
\t@echo "  validate       Validate YAML with kubeconform via docker"
\t@echo "  kind-down      Delete the kind cluster"

kind-up:
\tkind create cluster --name $(KIND_CLUSTER) --config $(KIND_CONFIG)
\tkubectl cluster-info --context kind-$(KIND_CLUSTER)

kind-down:
\tkind delete cluster --name $(KIND_CLUSTER) || true

addons:
\tbash kind/install-metrics-server.sh
\tbash kind/install-ingress-nginx.sh

lab:
\t@if [ ! -d "$(LAB)" ]; then echo "Lab not found: $(LAB)"; exit 1; fi
\t@echo "Applying lab: $(LAB)"
\t@find "$(LAB)" -maxdepth 1 -type f \\( -name '*.yaml' -o -name '*.yml' \\) -print -exec kubectl apply -f {} \\;

kustomize:
\tkubectl apply -k kustomize/overlays/dev

helm:
\thelm upgrade --install echo-chart helm/echo-chart --namespace demo --create-namespace

validate:
\tdocker run --rm -v $$PWD:/tmp ghcr.io/yannh/kubeconform:latest -summary -strict -schema-location default -schema-location 'https://raw.githubusercontent.com/yannh/kubernetes-json-schema/master/' -skip 'helm/.*' /tmp

fmt:
\tfind . -name '*.yaml' -o -name '*.yml' | xargs -I {} sh -c "yq -P -i {} || true"
