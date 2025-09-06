# Task: NetworkPolicy
- Apply a **default deny** policy, then allow same-namespace traffic.
- Verify with busybox test pods (`wget -qO- http://echo:80`).
- Requires a CNI that enforces policies.
