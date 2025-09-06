# Cost Optimization

- Right-size requests; adopt VPA/HPA.
- Autoscale nodes; use spot/preemptible where acceptable.
- Consolidate low-SLO workloads with taints/tolerations.
- Use `kubectl top` + Prometheus for utilization dashboards; alert on waste.
