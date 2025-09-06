# Observability

- **Metrics**: metrics-server for HPA; Prometheus for custom metrics.
- **Logs**: stdout/stderr + sidecar/daemonset shipping (Fluent Bit).
- **Tracing**: OpenTelemetry SDKs & collector.
- **SLOs**: budget-based error tracking; alert on *symptoms*, not just causes.
