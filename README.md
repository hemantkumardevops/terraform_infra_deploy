🚀 Terraform Azure Infrastructure Deployment Pipeline

📌 Overview
This repository contains a CI/CD pipeline that deploys Azure infrastructure using Terraform modules. The pipeline allows users to choose the target environment at runtime.
⚙️ Features
1. Dynamic Environment Selection
Users can select the environment (dev / qa / prod) at pipeline runtime.
2. CI/CD Tool
Azure DevOps YAML pipeline is used for automation.
3. Template-Based Pipeline Design
Main pipeline uses reusable YAML templates.
Templates are called to execute environment-specific stages.
Ensures modular and maintainable CI/CD design.
4. Parameters (Runtime Inputs)
Pipeline uses parameters to take user input during execution.
Examples:
Environment selection: dev / qa / prod
Action selection: plan / apply
These parameters control which Terraform workflow runs.
5. Variables (Configuration Values)
Pipeline uses variables to store reusable values.
Examples:
Azure subscription ID
Resource group name
Storage account name
Backend configuration for Terraform state
Variables help avoid hardcoding and improve maintainability.
6. Variable Groups (Environment-specific Configurations)
Azure DevOps Variable Groups are used to manage environment-specific configuration centrally.
They store:
Terraform state file names (tfstate-dev, tfstate-qa, tfstate-prod)
Resource Group names for each environment
Storage Account names
Backend configuration details per environment
Benefits:
Centralized configuration management
Easy environment switching
No hardcoding in YAML pipelines
Secure storage of sensitive values (Key Vault integration supported)
7. Infrastructure as Code
Terraform is used to provision Azure resources.
Modules are implemented for reusability and scalable infrastructure design.
8. 🏗️ Resource Provisioned
Azure Resource Group (RG) creation using Terraform modules.
📂 Project Structure
environment/           # Environment-specific configs (dev/qa/prod)
module/                # Reusable Terraform modules
templates/             # Reusable Azure DevOps YAML templates
infraproject/         # Core Terraform codebase
azure-devops-main.yml # Main Azure DevOps pipeline
▶️ How it works
Pipeline is triggered manually or automatically.
User selects:
Environment (dev / qa / prod)
Action (plan / apply)
Pipeline loads:
Parameters (runtime input)
Variables (global config)
Variable Groups (env-specific config)
Main pipeline calls reusable templates.
Template executes environment-specific stage.
Terraform initializes backend using variable group values.
Infrastructure is deployed.
