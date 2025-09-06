# Resource Management Best Practices

- Set **requests** for every container; omit limits unless you need hard caps.
- Use **VPA** for baseline sizing and **HPA** for elasticity.
- Avoid overcommitting memory; CPU overcommit is safer than memory.
- Use **PodDisruptionBudget** for HA during maintenance.
