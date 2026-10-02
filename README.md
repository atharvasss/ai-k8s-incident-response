## Incident Workflow

**BREAK → INVESTIGATE → FIX → VERIFY**

The incident workflow demonstrates how a Kubernetes failure is detected, investigated using observability data, analyzed with AI assistance, and verified after recovery.

### 1. Kubernetes Environment

The local Kubernetes cluster and application workload running before incident investigation.

![Kubernetes Cluster](docs/s1.png)

### 2. Observability

Prometheus and Grafana provide metrics and cluster-level visibility for identifying abnormal workload behavior.

![Prometheus and Grafana](docs/s2.png)

### 3. Incident Detection

A simulated application failure causes the `demo-app` workload to enter `CrashLoopBackOff`, providing a controlled incident for investigation.

![Kubernetes CrashLoopBackOff](docs/s3.png)

### 4. Log Investigation

Application and Kubernetes logs are centralized in Elasticsearch and visualized through Kibana to support incident investigation.

![Kibana Logs](docs/s4.png)

### 5. AI-Assisted Analysis

The Python incident analyzer collects Kubernetes evidence and uses a local Ollama LLM to generate a structured incident analysis and suggested remediation.

![AI Incident Analysis](docs/s5.png)

### 6. Recovery Verification

After remediation, the application returns to a healthy state and all expected workloads are running successfully.

![Recovered Kubernetes Workloads](docs/sfinal.png)
