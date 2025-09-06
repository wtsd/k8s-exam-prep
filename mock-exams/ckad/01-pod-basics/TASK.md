# CKAD-Style Task: Pod Basics (7 min)
Create a Pod named `tools` in namespace `dev` using image `registry.k8s.io/busybox` that:
- Runs `sleep 3600`
- Has env `LOG_LEVEL=debug`
- Uses requests cpu=50m memory=64Mi
