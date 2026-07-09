# ResumeOps AI

A cloud-native AI-powered resume intelligence platform built on Google Cloud Platform.

> **Project Status:** In Development

## Overview

ResumeOps AI is a DevOps-focused portfolio project designed to demonstrate the architecture, provisioning, security, deployment, and operation of an AI-enabled cloud-native workload on GCP.

The platform will process uploaded resumes, extract structured candidate information, perform AI-assisted skill and experience analysis, and provide job-description matching insights.

The primary focus of this project is cloud infrastructure and DevOps engineering rather than application complexity.

## Planned Architecture

The platform is designed around the following workflow:

1. A user uploads a resume through the application.
2. The resume API stores the document in Cloud Storage.
3. A processing worker extracts structured document data.
4. Vertex AI performs semantic resume analysis.
5. Structured results are persisted for retrieval.
6. The application returns candidate insights and job-match analysis.

## Technology Stack

### Cloud Platform
- Google Cloud Platform (GCP)

### Infrastructure as Code
- Terraform

### Containers and Orchestration
- Docker
- Kubernetes
- Google Kubernetes Engine (GKE)

### CI/CD
- Cloud Build
- Cloud Deploy
- Artifact Registry

### AI and Document Processing
- Vertex AI
- Gemini
- Document AI

### GCP Native Services
- Cloud Storage
- Firestore
- Secret Manager
- Cloud Logging
- Cloud Monitoring

### Security and Identity
- Google Cloud IAM
- Kubernetes Service Accounts
- Workload Identity Federation for GKE
- Least-privilege access controls

### Application
- Python
- FastAPI
- React

### CLI Tooling
- gcloud CLI
- kubectl
- Terraform CLI

## DevOps Objectives

This project is being developed to demonstrate:

- Modular Terraform infrastructure
- Reproducible GCP environments
- Kubernetes workload deployment
- Container image lifecycle management
- Automated CI/CD pipelines
- Workload-level cloud identity
- Least-privilege IAM design
- Horizontal pod autoscaling
- Kubernetes health probes
- Network policy implementation
- Cloud-native logging and monitoring
- Infrastructure cost awareness
- Environment lifecycle automation

## Repository Structure

```text
resumeops-ai/
├── docs/
├── frontend/
├── kubernetes/
├── scripts/
├── services/
└── terraform/
    ├── environments/
    │   └── dev/
    └── modules/

## Environments

The project will initially use a development environment.

Infrastructure will be provisioned and destroyed through Terraform to support reproducible deployments and cost-controlled development.

## Current Phase

Project bootstrap and GCP infrastructure foundation.

## Author

Aditya Singh