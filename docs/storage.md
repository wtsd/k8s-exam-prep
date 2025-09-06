# Storage & Stateful Workloads

- **PV/PVC/SC**: Abstraction for dynamic storage; use appropriate reclaim policy.
- **AccessModes**: RWO, ROX, RWX — match with workload requirements.
- **StatefulSet**: stable identities & volumes; ordered (parallelizable) rollout options.
- **Backup/Restore**: Velero or CSI snapshots; know etcd backup for CKA.
