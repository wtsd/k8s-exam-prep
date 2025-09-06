# Scheduling Deep Dive

- **Requests/Limits**: Scheduler uses *requests*; avoid limits unless necessary.
- **QoS classes**: Guaranteed / Burstable / BestEffort.
- **Taints/Tolerations**: repel/allow; combine with **node affinity** for control.
- **Affinity/Anti-Affinity**: spread or pack; use topology keys wisely.
- **Priority & Preemption**: ensure critical control-plane add-ons are protected.
