# Security (CKS-Oriented Essentials)

- **Pod Security Standards**: baseline/restricted labels at namespace level.
- **RBAC**: least privilege; split read vs write; use serviceaccounts per app.
- **SecurityContext**: runAsNonRoot, drop ALL capabilities, readonlyRootFilesystem.
- **Admission**: Gatekeeper/Kyverno for policy; sign images & verify (cosign).
- **Secrets**: prefer external KMS (e.g., Vault) or CSI driver; avoid env when possible.
- **Supply Chain**: SBOMs, provenance, immutable tags, image scanning in CI.
- **Audit**: enable audit policy; ship to SIEM; runtime detection (Falco).
