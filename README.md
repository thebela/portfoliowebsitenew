# DevOps Portfolio Deployment on AWS using Kubernetes, Terraform & GitHub Actions

![AWS](https://img.shields.io/badge/AWS-Cloud-orange)
![Terraform](https://img.shields.io/badge/Terraform-IaC-623CE4)
![Docker](https://img.shields.io/badge/Docker-Container-blue)
![Kubernetes](https://img.shields.io/badge/Kubernetes-Orchestration-326CE5)
![GitHub Actions](https://img.shields.io/badge/GitHub-Actions-success)
![Prometheus](https://img.shields.io/badge/Monitoring-Prometheus-E6522C)
![Grafana](https://img.shields.io/badge/Grafana-Dashboard-F46800)

---

## Project Overview

This project demonstrates a complete end-to-end DevOps workflow for deploying a containerized portfolio application on a highly available Kubernetes cluster running on AWS.

Instead of deploying an application manually, the entire infrastructure, deployment process, scaling strategy, and monitoring stack are automated using modern DevOps tools.

The objective of this project was to simulate a real-world production deployment while following Infrastructure as Code (IaC), CI/CD automation, container orchestration, and observability best practices.

---

## Architecture

```

GitHub
│
│ Push
▼

GitHub Actions (CI/CD)
│
├── Build Docker Image
├── Push Image to Docker Hub
└── Deploy to Kubernetes

↓

AWS EC2 Infrastructure
(Terraform Provisioned)

↓

Kubernetes Cluster
(1 Master + 2 Workers)

↓

Portfolio Application

↓

Horizontal Pod Autoscaler

↓

Prometheus

↓

Grafana Dashboards

```

---

# Technologies Used

| Category | Tools |
|----------|------|
| Cloud | AWS EC2 |
| Infrastructure as Code | Terraform |
| Containerization | Docker |
| Container Registry | Docker Hub |
| Orchestration | Kubernetes (kubeadm) |
| CI/CD | GitHub Actions |
| Monitoring | Prometheus |
| Visualization | Grafana |
| Web Server | Nginx |
| Version Control | Git & GitHub |
| Operating System | Ubuntu Server |

---

# Features

- Infrastructure provisioned using Terraform
- Multi-node Kubernetes cluster on AWS
- Dockerized portfolio application
- Automated CI/CD pipeline with GitHub Actions
- Automatic Docker image publishing
- Kubernetes Deployment and Service manifests
- Horizontal Pod Autoscaler (HPA)
- Prometheus metrics collection
- Grafana dashboards
- Rolling updates with zero manual deployment
- Infrastructure reproducibility using IaC

---

# Project Workflow

### 1. Infrastructure Provisioning

Terraform provisions the required AWS EC2 instances used as:

- Kubernetes Master Node
- Worker Node 1
- Worker Node 2

This eliminates manual infrastructure setup and makes deployments repeatable.

---

### 2. Containerization

The portfolio website is packaged into a lightweight Docker image.

```
Dockerfile
↓
Docker Image
↓
Docker Hub
```

---

### 3. Continuous Integration

Whenever changes are pushed to the GitHub repository:

- Source code is checked out
- Docker image is built
- Docker image is tagged
- Docker image is pushed to Docker Hub

This process is fully automated using GitHub Actions.

---

### 4. Continuous Deployment

After a successful image build, GitHub Actions deploys the latest version to the Kubernetes cluster.

Deployment is handled without manually logging into the servers.

---

### 5. Kubernetes Deployment

The application runs inside Kubernetes Deployments and Services.

Key capabilities include:

- Replica management
- Self-healing pods
- Automatic scheduling
- Rolling updates
- Load balancing

---

### 6. Autoscaling

Horizontal Pod Autoscaler dynamically adjusts the number of running pods based on CPU utilization.

This enables the application to handle varying traffic loads efficiently.

---

### 7. Monitoring

Prometheus continuously collects cluster and application metrics.

Grafana visualizes these metrics through dashboards for monitoring:

- CPU Usage
- Memory Usage
- Pod Health
- Cluster Status
- Node Metrics

---

# Repository Structure

```

.
├── terraform/
│ ├── main.tf
│ ├── variables.tf
│ └── outputs.tf
│
├── kubernetes/
│ ├── deployment.yaml
│ ├── service.yaml
│ ├── hpa.yaml
│ └── ingress.yaml
│
├── .github/
│ └── workflows/
│ └── deploy.yml
│
├── Dockerfile
├── nginx.conf
├── index.html
└── README.md

```

---

# CI/CD Pipeline

```

Developer Pushes Code

↓

GitHub Repository

↓

GitHub Actions

↓

Build Docker Image

↓

Push Image to Docker Hub

↓

Update Kubernetes Deployment

↓

Rolling Update

↓

Application Available

```

---

# Key DevOps Concepts Demonstrated

- Infrastructure as Code
- Immutable Infrastructure
- Containerization
- Kubernetes Orchestration
- Declarative Deployments
- CI/CD Automation
- Horizontal Scaling
- Monitoring & Observability
- Infrastructure Automation
- Version Controlled Infrastructure

---

# Challenges Faced

This project involved solving several real-world deployment challenges:

- Docker image architecture compatibility issues
- Kubernetes ImagePullBackOff troubleshooting
- Worker node configuration and cluster setup
- GitHub Actions authentication and Kubernetes connectivity
- Prometheus and Grafana resource scheduling issues
- Terraform infrastructure provisioning errors
- Service networking and NodePort configuration
- Kubernetes deployment debugging

Resolving these issues provided practical experience with debugging distributed systems rather than simply following tutorials.

---

# Future Improvements

- Helm Charts
- ArgoCD GitOps deployment
- AWS EKS migration
- HTTPS using Cert Manager
- Ingress Controller
- Loki for centralized logging
- Trivy image security scanning
- SonarQube code quality analysis
- Multi-environment deployments (Dev / Staging / Production)

---

# Skills Demonstrated

- AWS Cloud
- Terraform
- Docker
- Kubernetes
- GitHub Actions
- Linux
- CI/CD
- Infrastructure as Code
- Monitoring
- DevOps Automation

---

## Author

**Aman Dinkar**

DevOps & Cloud Engineer

- AWS
- Kubernetes
- Docker
- Terraform
- GitHub Actions
- Linux
- Prometheus
- Grafana

---

If this project interests you or you'd like to discuss DevOps, Cloud Infrastructure, or Automation, feel free to connect with me on LinkedIn.
