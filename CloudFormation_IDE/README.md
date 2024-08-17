# Fault Injection Simulator Setup

This guide will walk you through the process of setting up your environment for the Fault Injection Simulator (FIS) Workshop.

## Steps to Get Started

### 1. Clone the Repository Locally

First, clone the repository to your local machine:

```bash
git clone https://github.com/nasiaullas/FaultInjectionSimulator-KodeKloud.git
```
### 2. Navigate to the CloudFormation Folder

Once the repository is cloned, navigate to the Cloudformation_IDE folder:

```bash
cd FaultInjectionSimulator-KodeKloud/CloudFormation_IDE
```
### 3.Download the YAML File

Download the FISAdminSetup.yaml file from this folder.

### 4.Deploy the CloudFormation Stack
Log in to your AWS account, switch to the CloudFormation service, and upload the FISAdminSetup.yaml file. Run the stack to create the necessary resources. Call it FISAdminSetup

### 5.Wait for EC2 Instance to Boot
After running the CloudFormation stack, wait for the EC2 instance to boot up. Check that both the IAM role and the instance have been created successfully.

### 6. Log in to the EC2 Instance
After running the CloudFormation stack, wait for the EC2 instance to boot up. Check that both the IAM role and the instance have been created successfully.
Once the instance is ready, log in to it. Switch to the sudo user:

```bash
sudo su -
```

### 7. Clone FIS Workshop Experiments
Next, clone the FIS Workshop experiments repository:
```bash
mkdir -p ~/environment/workshopfiles && git clone https://github.com/aws-samples/aws-fault-injection-simulator-workshop-v2.git ~/environment/workshopfiles/fis-workshop
```
### Optional ### 8. Clone the Repository Again
Inside the EC2 instance, clone the repository again:

```bash
git clone https://github.com/nasiaullas/FaultInjectionSimulator-KodeKloud.git
```
Navigate to the cloudformation_ide folder:
```bash
cd FaultInjectionSimulator-KodeKloud/CloudFormation_IDE
```
### 9. Check for Dependencies
Run the chk_dependencies.sh script to ensure all necessary dependencies have been downloaded:
```bash
chmod 777 chk_dependencies.sh
./chk_dependencies.sh






