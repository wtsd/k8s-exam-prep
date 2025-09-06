# Study Map: From Zero → Certified

## Phase 0 — Foundations (KCNA)
- Containers vs VMs, OCI images, registries
- Kubernetes core objects: Pod, ReplicaSet, Deployment, Service, ConfigMap, Secret
- Control plane vs nodes: apiserver, etcd, scheduler, controller-manager, kubelet, kube-proxy
- CNI, CSI, CRI — what they are and how they plug in
- YAML basics & `kubectl` ergonomics

## Phase 1 — CKAD Focus (App Developer)
- Pod design patterns (multi-container: sidecar, ambassador, adapter)
- Probes, requests/limits, env, configmap/secret, downwardAPI
- Jobs/CronJobs, initContainers, lifecycle hooks
- Services, Ingress, HPA & metrics
- Kustomize / Helm basics

## Phase 2 — CKA Focus (Admin)
- Scheduling (taints/tolerations, affinity/anti, priority/preemption)
- Cluster maintenance (backup/restore etcd, drain/cordon, upgrades)
- Storage (PV/PVC/SC; StatefulSets)
- Networking (kube-proxy iptables/ipvs, CoreDNS, NetworkPolicy)
- Troubleshooting methodology & `kubectl`/`crictl`/`journalctl` drills

## Phase 3 — CKS Focus (Security)
- Pod Security Standards (PSS), RBAC, service accounts, authn/z
- Image security (non-root, capabilities, seccomp, AppArmor)
- Supply chain: admission policy (OPA/Gatekeeper or Kyverno), SBOM, signing
- Network segmentation (NetworkPolicy), TLS, secrets at rest
- Runtime detection/response (audit logs, Falco)

> Use **labs/** in order, then attempt **mock-exams/** under time constraints.
