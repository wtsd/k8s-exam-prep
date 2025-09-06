# Networking Essentials & Best Practices

- **Service types**: ClusterIP (default), NodePort (fixed port range), LoadBalancer (cloud LB), Headless (service discovery).
- **DNS**: CoreDNS for service discovery; `svc.cluster.local` by default.
- **NetworkPolicy**: Default allow; add *default deny* and then explicitly allow.
- **Ingress**: L7 routing via controller; watch class annotations.
- **kube-proxy**: Prefer **ipvs** mode when supported for scale.
- **MTU**: Align CNI MTU with underlying network to avoid fragmentation.
