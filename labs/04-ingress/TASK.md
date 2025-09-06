# Task: Ingress
- Assume Service `echo` exists. Create an Ingress routing `echo.local/` → `echo`.
- Test with port-forwarded ingress (kind adds NodePorts -> mapped to host 8080/8443).
- Remember to add `echo.local` to `/etc/hosts` pointing to 127.0.0.1 for local tests.
