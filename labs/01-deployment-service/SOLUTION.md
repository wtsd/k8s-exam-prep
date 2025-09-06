```bash
kubectl apply -f labs/01-deployment-service/deployment.yaml
kubectl apply -f labs/01-deployment-service/service.yaml
kubectl get svc echo
kubectl port-forward svc/echo 8080:80 &
curl -s localhost:8080 | head -n 3
```
