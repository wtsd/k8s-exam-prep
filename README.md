# Kubernetes Exam & Interview Prep (CKA / CKAD / CKS / KCNA)

A practical, **hands-on** repo to prepare for Kubernetes certifications and interviews —
from fundamentals to advanced scenarios. Includes:
- Study guides & best practices
- Progressive labs (beginner → advanced)
- Mock exams (task + solution)
- Interview Q&A and whiteboard scenarios
- Makefile for quick local cluster with **kind**

> Designed to be copy‑paste friendly and GitHub‑ready. No proprietary exam content — just skills and patterns.

## Quick Start

**Requirements**: Docker, `kubectl`, `kind` (and optionally `helm`, `kustomize`).

```bash
# 1) Create a local kind cluster (with Ingress-ready config)
make kind-up

# 2) Verify cluster works
kubectl get nodes
kubectl get ns

# 3) Install helpers (metrics-server, ingress-nginx) for certain labs
make addons

# 4) Run your first lab (hello pod)
make lab LAB=labs/00-hello-pod

# 5) Tidy up
make kind-down
```

## Structure

```
docs/                # study maps, best practices, cheat sheets
labs/                # guided labs ordered by difficulty
mock-exams/          # CKAD / CKA / CKS style tasks + solutions
interview/           # questions, answers & whiteboard prompts
kind/                # local cluster config + addons installers
tools/               # helper scripts
kustomize/           # small kustomize example
helm/                # tiny Helm chart for practice
.github/workflows/   # CI example (YAML/schema validation)
```

## Certifications Covered

- **KCNA**: Cloud-native fundamentals & terms
- **CKAD**: App design, Pod patterns, services, configs, probes, jobs
- **CKA**: Cluster admin, scheduling, storage, networking, troubleshooting
- **CKS**: Security hardening, RBAC, PSS, supply chain, runtime security

> This repo maps *public* exam domains to practical tasks.

## How to Study
1. Skim the **[Study Map](docs/study-map.md)** to plan your week(s).
2. Do labs in order. Timebox yourself (e.g., 7–12 min per task CKAD-style).
3. Attempt **mock-exams** under realistic constraints (no internet besides docs).
4. Review **best practices** and interview answers to close gaps.
5. Repeat: speed + correctness + explanation.

**Good luck — and have fun!**
