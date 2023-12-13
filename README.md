# AWS EKS Cluster Deployment with Terraform and Jenkins

### Overview
This project automates the deployment of an Amazon Web Services (AWS) Elastic Kubernetes Service (EKS) Cluster using Terraform, with Jenkins as the CI/CD tool. It sets up all necessary AWS resources, including EC2 instances, Virtual Private Cloud (VPC), Subnets, Security Groups, and IAM Roles, to ensure a fully functional and secure EKS Cluster.

### Prerequisites
* AWS Account with appropriate permissions
* Jenkins server with Terraform plugin installed
* Terraform installed locally (for development and testing)
* Basic understanding of Kubernetes, AWS services, Terraform, and Jenkins

### Architecture
This project sets up the following resources in AWS:

* **EKS Cluster:** Managed Kubernetes Service by AWS.
* **EC2 Instances:** Worker nodes for the Kubernetes cluster.
* **VPC:** Virtual Private Cloud for resource isolation.
* **Subnets:** Network partitions within the VPC.
* **Security Groups:** Firewall rules to control traffic to instances. (Future ToDo)
* **S3 Bucket:** Store TF State file here.

### Setup Instructions
#### Configuring Jenkins
1. Jenkins Installation: Ensure Jenkins is installed and running.
2. Terraform Installation: Install the Terraform where Jenkins is installed for Terraform support.
3. Configure AWS Credentials: Store your AWS credentials securely in Jenkins.
#### Terraform Configuration
1. **Clone the Repository: `git clone https://github.com/Shawnzy/jenkins-pipeline-deploy-to-eks.git`** 
2. **Initialize Terraform:** Navigate to the Terraform directory and run terraform init to initialize the environment.
3. **Create a Terraform Plan:** Run **`terraform plan`** to see the changes Terraform will make.
4. **Apply Configuration:** Execute **`terraform apply`** to create the AWS resources.
### Continuous Deployment with Jenkins
1. **Create a Jenkins Job:** Set up a new Jenkins job for this project.
2. **Create AWS EKS Cluster:** Use terraform scripts to create an AWS EKA cluster and all of its components.
3. **Apply Deployment and Service:** Use **kubectl** commands to deploy the **nginx** Deployment and Serivce.
4. **Build Triggers:** Configure triggers between Jenkins and Code Repo for automatic or manual builds.
### Usage
* **Updating the Cluster:** Make changes to the Terraform configuration files and push the changes. Jenkins will automatically apply these changes based on the configured triggers.
* **Monitoring:** Monitor the EKS cluster and resources through AWS Management Console.
### Troubleshooting
* Check Jenkins build logs for errors during deployment.
* Use **`terraform`** plan and **`terraform apply`** output for debugging Terraform issues.
* Consult AWS EKS documentation for service-specific issues.
### Contributing
Contributions to improve the script or add new features are welcome. Please follow the standard fork, branch, and pull request workflow.
