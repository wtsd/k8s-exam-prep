# Task: Expose a Deployment
- Create a Deployment `echo` (2 replicas) using image `registry.k8s.io/echoserver:1.4`.
- Expose it with a ClusterIP Service on port 80.
- Verify that the Service answers.

**Hints**
- `kubectl port-forward svc/echo 8080:80`
- `curl localhost:8080`
