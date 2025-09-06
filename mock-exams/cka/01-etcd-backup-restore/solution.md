Example outline:
```bash
# SSH to control-plane & export variables from kubeadm cluster:
export ETCDCTL_API=3
export ENDPOINTS=https://127.0.0.1:2379
export CACERT=/etc/kubernetes/pki/etcd/ca.crt
export CERT=/etc/kubernetes/pki/etcd/server.crt
export KEY=/etc/kubernetes/pki/etcd/server.key

sudo ETCDCTL_API=3 etcdctl --endpoints=$ENDPOINTS --cacert=$CACERT --cert=$CERT --key=$KEY snapshot save /tmp/etcd-snap.db

# Restore flow documented in Kubernetes docs (varies by setup).
```
