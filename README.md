# GCP Multi-Environment Migration Orchestration

## Project Overview
This repository documents the migration and governance of production and non-production environments to Google Cloud Platform. 

## Key Technical Implementations
- **Environment Isolation:** Segregated workloads into 5 specific namespaces across Dev and Prod clusters.
- **Resource Governance:** Implemented ResourceQuotas and LimitRanges to manage compute costs and prevent "noisy neighbor" issues.
- **Blue-Green Strategy:** Utilized parameterized Codefresh pipelines to toggle service selectors between version colors, ensuring zero-downtime cutovers.
- **Post-Migration Validation:** Used Dynatrace for performance monitoring and manual connectivity testing via kubectl remote shells.

## Tools Used
- **Orchestration:** GKE, kubectl
- **CI/CD:** Codefresh, GitHub
- **Monitoring:** Dynatrace
- **Documentation:** Confluence
