# CKA-Style Task: etcd Backup & Restore
- Create a snapshot of etcd on the control-plane node to `/tmp/etcd-snap.db`.
- Corrupt/delete a key for a test namespace, then restore from snapshot.
- Validate objects are back.
**Note:** Requires root access on control-plane and etcdctl env vars.
