```bash
kubectl apply -f labs/01-deployment-service/deployment.yaml
kubectl apply -f labs/01-deployment-service/service.yaml
kubectl apply -f labs/04-ingress/ingress.yaml
# /etc/hosts: 127.0.0.1 echo.local
curl -s http://echo.local:8080 | head -n 2
```
