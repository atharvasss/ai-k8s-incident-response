# GitOps-Based Kubernetes Deployment & Progressive Delivery Platform

**Kubernetes · Argo CD · GitHub Actions · Docker · Helm · Trivy · Prometheus · Grafana · Kibana · AI-Assisted Incident Analysis**

A Kubernetes delivery platform designed to combine GitOps-based deployment with progressive release practices and operational verification.

The project demonstrates how an application can be deployed and monitored in Kubernetes, how abnormal workload behavior can be investigated using observability data, and how recovery can be verified after an incident.

---

## Architecture

```text
Developer Push
      ↓
GitHub Actions
      ↓
Docker Build
      ↓
Trivy Scan
      ↓
Container Registry
      ↓
Helm
      ↓
Argo CD
      ↓
Kubernetes
      ↓
Progressive Release
      ↓
Prometheus + Grafana
      ↓
Logs → Kibana
      ↓
AI-Assisted Analysis
      ↓
Recovery Verification
```

The platform separates **application delivery, deployment management, observability, and incident verification**. Argo CD manages the desired Kubernetes state, while monitoring and centralized logs provide operational visibility when the deployed workload does not behave as expected.

---

## What I Built

- Created a GitHub Actions workflow for container build and delivery.
- Added Trivy scanning to identify container security vulnerabilities before deployment.
- Packaged Kubernetes resources using Helm.
- Implemented GitOps-based application synchronization using Argo CD.
- Configured Kubernetes workloads for controlled application releases.
- Added Prometheus and Grafana for deployment and workload monitoring.
- Centralized application logs for investigation through Kibana.
- Simulated a Kubernetes application failure and investigated the resulting incident.
- Used a local AI-assisted analysis workflow to interpret incident evidence and suggest remediation.
- Verified application recovery after remediation.

---

# Deployment & Incident Workflow

**DEPLOY → OBSERVE → DETECT → INVESTIGATE → ANALYZE → RECOVER**

The screenshots below demonstrate the operational side of the platform: starting with a healthy Kubernetes environment, detecting a workload failure, investigating the available evidence, using AI-assisted analysis, and finally verifying recovery.

---

## 1. Kubernetes Cluster

The application is deployed into a local Kubernetes environment where the workloads can be managed, monitored, and tested under controlled conditions.

![Kubernetes Cluster]\(docs/s1.png)

This provides the baseline environment for validating application behavior and simulating deployment-related failures.

---

## 2. Prometheus & Grafana Monitoring

Prometheus and Grafana provide visibility into the Kubernetes environment and application workload health.

![Prometheus and Grafana]\(docs/s2.png)

Monitoring provides the operational signal needed to identify abnormal behavior and determine when deeper investigation is required.

---

## 3. Incident Detection — CrashLoopBackOff

A controlled application failure is introduced to simulate a real production-style incident.

![Kubernetes CrashLoopBackOff]\(docs/s3.png)

The `demo-app` workload enters `CrashLoopBackOff`, indicating that Kubernetes is repeatedly attempting to start a container that is failing.

This creates a realistic failure scenario for testing the investigation and recovery workflow.

---

## 4. Log Investigation with Kibana

After detecting the workload failure, application and Kubernetes logs are investigated through Kibana.

![Kibana Logs]\(docs/s4.png)

Centralized logs provide additional context beyond Kubernetes pod status, helping identify the underlying behavior responsible for the failure.

---

## 5. AI-Assisted Incident Analysis

The collected incident evidence is passed to the incident-analysis workflow, where a local AI model analyzes the available Kubernetes and application information.

![AI Incident Analysis]\(docs/s5.png)

The analysis provides a structured interpretation of the incident together with potential remediation guidance.

This demonstrates how AI can assist an engineer during investigation without replacing the underlying observability and troubleshooting workflow.

---

## 6. Recovery Verification

After remediation, the Kubernetes workloads return to a healthy state.

![Recovered Kubernetes Workloads]\(docs/sfinal.png)

The final state confirms that the failed workload has recovered and the expected Kubernetes resources are running successfully.

This completes the incident lifecycle:

**DETECT → INVESTIGATE → ANALYZE → REMEDIATE → VERIFY**

---

# Operational Workflow

```text
                    ┌─────────────────┐
                    │   Kubernetes    │
                    │    Workload     │
                    └────────┬────────┘
                             ↓
                    ┌─────────────────┐
                    │ Prometheus +    │
                    │ Grafana         │
                    └────────┬────────┘
                             ↓
                       Failure Detected
                             ↓
                    ┌─────────────────┐
                    │ CrashLoopBackOff│
                    └────────┬────────┘
                             ↓
                    ┌─────────────────┐
                    │ Kibana Logs     │
                    │ Investigation   │
                    └────────┬────────┘
                             ↓
                    ┌─────────────────┐
                    │ AI-Assisted     │
                    │ Analysis        │
                    └────────┬────────┘
                             ↓
                         Remediation
                             ↓
                    ┌─────────────────┐
                    │ Recovery        │
                    │ Verification    │
                    └─────────────────┘
```

---

# Key Learning

- GitOps-based Kubernetes deployment
- Progressive application delivery
- Kubernetes workload troubleshooting
- Prometheus and Grafana monitoring
- Centralized log investigation with Kibana
- Container security scanning with Trivy
- Helm-based Kubernetes packaging
- Argo CD synchronization
- AI-assisted incident investigation
- Kubernetes recovery and verification

---

## Engineering Outcome

The project demonstrates a deployment workflow that does not stop when an application is successfully deployed.

It connects **delivery with operational verification**:

**DEPLOY → OBSERVE → DETECT → INVESTIGATE → ANALYZE → RECOVER**

The result is a more controlled approach to Kubernetes delivery where deployment health can be observed, failures can be investigated using multiple sources of evidence, and recovery can be verified after remediation.
