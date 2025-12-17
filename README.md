🚀 TODO AKS Infrastructure – DevSecOps Project
📌 Overview

This project provisions and manages production-grade Azure infrastructure for a 3-tier TODO application using Terraform and deploys it through a secure Azure DevOps CI/CD pipeline.
The setup follows industry best practices for Infrastructure as Code, security, environment separation, and deployment governance.

🏗️ Architecture Highlights

Azure Kubernetes Service (AKS)

Azure Container Registry (ACR)

Virtual Network & Subnets

Log Analytics Workspace

Remote Terraform backend with state locking

Separate Dev and Prod environments

🛠️ Tech Stack

Cloud: Microsoft Azure

IaC: Terraform (modular structure)

CI/CD: Azure DevOps (YAML pipelines)

Security & Quality:

tflint – Terraform code quality

tfsec – IaC security scanning

Container Platform: AKS (Kubernetes)

📂 Repository Structure
.
├── modules/
│   ├── rg/
│   ├── vnet/
│   ├── aks/
│   ├── acr/
│   └── log_analytics/
│
├── env/
│   ├── Dev/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   ├── terraform.tfvars
│   │   └── backend.tf
│   │
│   └── Prod/
│       ├── main.tf
│       ├── variables.tf
│       ├── terraform.tfvars
│       └── backend.tf
│
├── azure-pipelines.yml
└── README.md

🌍 Environment Strategy

Dev:

Automatic deployment

Security scans in soft-fail mode

Prod:

Manual approval via Azure DevOps Environment

Strict deployment control

Separate Terraform state

🔐 Terraform Best Practices

Modular Terraform design (child + parent modules)

Typed variables for strong module contracts

Remote backend (Azure Storage Account)

State locking to avoid concurrent conflicts

No hard-coded secrets

🚦 CI/CD Pipeline Design
Pipeline Stages

Plan Stage

terraform init

terraform validate

tflint (non-blocking)

tfsec (soft-fail in Dev)

terraform plan

Deploy Stage

Dev: auto-deploy

Prod: approval-gated deploy

terraform init + terraform apply

🔍 Security & Quality

tflint

Enforces Terraform best practices

Non-blocking for developer productivity

tfsec

Detects misconfigurations (AKS, networking, IAM)

Soft-fail in Dev, strict in Prod

🔑 Authentication

Azure DevOps ARM Service Connection

🧠 Key Learnings / Highlights

Real-world DevSecOps pipeline implementation

Environment-based governance and approvals

Practical handling of IaC security findings

GitHub repository rules with PR-based workflow

Secure Service Principal access

No credentials stored in code
