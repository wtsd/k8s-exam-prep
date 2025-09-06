```bash
kubectl apply -f labs/02-configmap-secret/configmap.yaml
kubectl apply -f labs/02-configmap-secret/secret.yaml
kubectl apply -f labs/02-configmap-secret/pod.yaml
kubectl exec -it po/app -- env | grep -E 'MODE|MESSAGE|PASSWORD'
kubectl get secret app-secret -oyaml  # base64-encoded
```
