import requests

with open("incident-data/incident.txt", "r") as f:
    incident = f.read()

prompt = f"""
You are a Kubernetes SRE assistant.

Analyze the following Kubernetes incident.

INCIDENT DATA:
{incident}

Provide:

1. Problem
2. Evidence
3. Probable root cause
4. Recommended fix
5. Verification command

Keep the answer concise and technical.
"""

response = requests.post(
    "http://localhost:11434/api/generate",
    json={
        "model": "qwen2.5:1.5b",
        "prompt": prompt,
        "stream": False
    }
)

print("\n===== AI INCIDENT ANALYSIS =====\n")
print(response.json()["response"])
