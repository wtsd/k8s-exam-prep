# Security Basics Checklist

- Namespaces with **PSS restricted** labels.
- Per-app ServiceAccounts, tight RBAC.
- `runAsNonRoot: true`, `readOnlyRootFilesystem: true`, drop Linux capabilities.
- Image pinning (immutable tags/digests), vulnerability scanning in CI.
