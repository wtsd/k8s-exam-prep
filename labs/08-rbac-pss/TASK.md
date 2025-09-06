# Task: RBAC + PSS
- Create namespace `secure-ns` with **restricted** Pod Security.
- Bind a read-only Role to its default SA.
- Attempt to run a privileged Pod and verify it is **rejected**.
