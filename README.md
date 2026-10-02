# AI-Powered Kubernetes Incident Response Platform

**Kubernetes · Python · AI · Prometheus · Grafana · ELK · Ollama**

An AI-assisted Kubernetes incident response platform designed to turn scattered Kubernetes signals into a structured investigation and remediation workflow.

## Architecture

Kubernetes Application  
→ Prometheus / Grafana + Elasticsearch / Kibana + Kubernetes Events  
→ Python Incident Analyzer  
→ Local LLM (Ollama)  
→ Root Cause Analysis + Suggested Remediation

<!-- SCREENSHOT: Add architecture diagram here -->
![Architecture Diagram](docs/digram.png)


## What I Built

- Integrated Kubernetes monitoring using Prometheus and Grafana.
- Centralized application and Kubernetes logs using Elasticsearch and Kibana.
- Built Python-based incident analysis using Kubernetes logs, events and monitoring data.
- Integrated a local LLM with Ollama to analyze incidents and suggest remediation.
- Simulated Kubernetes failures such as `CrashLoopBackOff` and validated the investigation workflow.
- Tested the complete flow from failure detection → investigation → root cause → recovery.

## Incident Workflow

**BREAK → INVESTIGATE → FIX → VERIFY**

<!-- SCREENSHOT: Kubernetes nodes / pods -->
![Architecture Diagram](docs/s1.png)

<!-- SCREENSHOT: Prometheus / Grafana dashboard -->
![Architecture Diagram](docs/s2.png)

<!-- SCREENSHOT: CrashLoopBackOff + logs -->
![Architecture Diagram](docs/s3.png)

<!-- SCREENSHOT: Kibana logs -->
![Architecture Diagram](docs/s4.png)

<!-- SCREENSHOT: AI-generated incident analysis -->
![Architecture Diagram](docs/s5.png)
<!-- SCREENSHOT: Recovered / all pods Running -->
![Architecture Diagram](docs/sfinal.png)

## Key Learning

- Kubernetes incident troubleshooting
- Observability and centralized logging
- Python automation and log analysis
- AI-assisted Root Cause Analysis
- Production-style incident investigation
