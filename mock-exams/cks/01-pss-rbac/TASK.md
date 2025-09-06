# CKS-Style Task: PSS + RBAC
- Enforce **restricted** PSS in namespace `prod`.
- Create a Role that allows get/list/watch pods only, bind to SA `auditor`.
- Show that a privileged Pod is denied by policy.
