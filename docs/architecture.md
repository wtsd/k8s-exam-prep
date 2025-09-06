# Cluster Architecture (High Level)

- **API Server**: REST front door; admission chain; authn/z; aggregation layer.
- **etcd**: strongly consistent KV; backup/restore critical for CKA.
- **Controller Manager**: reconciliation loops (deployments, endpoints, jobs, etc).
- **Scheduler**: binds Pods to nodes using predicates & scoring.
- **kubelet**: node agent; Pod lifecycle; interacts with CRI.
- **kube-proxy**: Services (iptables/ipvs) — cluster IP VIP load-balancing.
- **CNI plugin**: allocates Pod IPs, sets up routes; policy support varies.
- **CSI plugin**: dynamic provisioning & attach/mount lifecycle.
