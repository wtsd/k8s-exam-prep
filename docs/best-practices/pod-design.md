# Pod Design Best Practices

- Prefer single responsibility per container; use sidecars for cross-cutting concerns.
- Health: **readiness** (ready to serve) vs **liveness** (needs restart).
- Config: ConfigMap for non-secret, Secret for sensitive; mount as files when possible.
- Avoid root user; set **securityContext** per container.
