# Troubleshooting Method (CKA-Style)

1. **Scope**: namespace? node? cluster-wide?
2. **Gather**: `kubectl get events -A`, `kubectl describe`, `logs`, node `journalctl`.
3. **Hypothesize**: networking? scheduling? permissions? storage?
4. **Act**: one change at a time; record commands.
5. **Verify**: tests/health checks; `kubectl rollout status`.

Common commands:
```bash
kubectl get events -A --sort-by=.lastTimestamp
kubectl describe po <name>
kubectl get endpoints,svc,ing -A
kubectl get cm,secret -A
kubectl get node -owide && kubectl describe node <n>
crictl ps -a && crictl inspect <id>
journalctl -u kubelet -xe --no-pager
```
