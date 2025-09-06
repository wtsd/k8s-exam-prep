```bash
kubectl apply -f labs/00-hello-pod/pod.yaml
kubectl get po hello
kubectl logs -f po/hello
kubectl exec -it po/hello -- sh
kubectl delete po/hello
```
