# Services & Ingress Best Practices

- Keep Services stable; change *selectors* cautiously.
- Use **IngressClass**; one controller per class.
- External access: consider **Gateway API** for modern traffic management.
- For production: HTTPS everywhere; cert-manager or cloud TLS termination.
