# Task: Run a simple Pod
- Create a Pod named `hello` that prints a timestamped message every 5 seconds.
- Verify logs, exec a shell, then delete the Pod.

**Hints**
- `kubectl logs -f po/hello`
- `kubectl exec -it po/hello -- sh`
