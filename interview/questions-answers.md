# Kubernetes Interview — Questions & Solid Answers

## Control Plane & Scheduling
**Q:** How does the scheduler place a Pod?

**A:** Filters nodes (taints, resources, affinity) → scores (spreading/packing, custom) → binds. Scheduler only writes a **binding**; kubelet then pulls the Pod.

**Q:** Difference between **requests** and **limits**?

**A:** Requests inform scheduling (minimum guaranteed). Limits are runtime caps (cgroup). Exceeding CPU limit throttles; exceeding memory limit OOMKills.

## Networking
**Q:** How do Services route traffic?

**A:** kube-proxy programs iptables/ipvs rules mapping a stable **ClusterIP** to Pod IPs (Endpoints/EndpointSlice). L7 Ingress uses a controller.

**Q:** Why NetworkPolicies sometimes “don’t work”?

**A:** Need a policy-capable CNI and policies must select both **Pod** and **traffic direction** (ingress/egress). No policy = allow all.

## Storage
**Q:** StatefulSet vs Deployment?

**A:** StatefulSet gives stable IDs and volumes for ordered, sticky state. Deployment is stateless rolling updates, no identity guarantees.

## Security
**Q:** Enforce “restricted” Pod security?

**A:** Label namespaces with `pod-security.kubernetes.io/enforce=restricted`. Combine with RBAC, non-root, dropped capabilities, read-only FS, and minimal host access.

## Operations
**Q:** How to safely upgrade a cluster?

**A:** Backup etcd → cordon & drain nodes with PDBs → upgrade control plane → upgrade nodes → validate (conformance tests) → rollback plan ready.

## Troubleshooting
**Q:** Pods Pending — where do you look?

**A:** `kubectl describe pod` (events), check node resources/taints, scheduler logs, admission rejections, PVC/SC availability.

> See more prompts in [interview/whiteboard-scenarios.md](./whiteboard-scenarios.md).

