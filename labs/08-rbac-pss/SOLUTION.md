```bash
kubectl apply -f labs/08-rbac-pss/ns.yaml
kubectl apply -f labs/08-rbac-pss/role.yaml
kubectl apply -f labs/08-rbac-pss/rolebinding.yaml
# Try privileged pod -> expect admission deny
```
