```bash
kubectl apply -f labs/05-pv-pvc-statefulset/storageclass.yaml
kubectl apply -f labs/05-pv-pvc-statefulset/pv.yaml
kubectl apply -f labs/05-pv-pvc-statefulset/headless-svc.yaml
kubectl apply -f labs/05-pv-pvc-statefulset/statefulset.yaml
kubectl get pvc
```
