# AWS Fault Injection Simulator (FIS) Workshop Setup

Welcome to the AWS Fault Injection Simulator (FIS) Workshop! This guide will walk you through the setup process, which includes creating the necessary IAM role, launching an EC2 instance, installing dependencies, and cloning the required GitHub repositories. By the end of this guide, you'll be ready to dive into the workshop and start experimenting with AWS FIS.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Setup Instructions](#setup-instructions)
  - [1. Create IAM Role](#1-create-iam-role)
  - [2. Launch EC2 Instance](#2-launch-ec2-instance)
  - [3. Install Git on the EC2 Instance](#3-install-git-on-the-ec2-instance)
  - [4. Clone GitHub Repository and Run Setup Script](#4-clone-github-repository-and-run-setup-script)
  - [5. Clone FIS Workshop Experiments](#5-clone-fis-workshop-experiments)
  - [6. Automate the Setup with CloudFormation](#6-automate-the-setup-with-cloudformation)
- [License](#license)

## Prerequisites

Before you begin, ensure you have the following:

- An AWS account with appropriate permissions to create IAM roles, EC2 instances, and run CloudFormation templates.
- Basic knowledge of AWS services and the AWS Management Console.
- SSH access to an EC2 instance.

## Setup Instructions

### 1. Create IAM Role

First, you need to create an IAM role that will be used by your EC2 instance.

- **Role Name:** `fisworkshop-admin`
- **Permissions:** Assign EC2 privileges to this role.
- **Important:** The naming convention (`fisworkshop-admin`) is crucial for the rest of the lab to work properly.

### 2. Launch EC2 Instance

Next, launch an EC2 instance:

- Choose your preferred region.
- Assign the `fisworkshop-admin` IAM role to this EC2 instance.

### 3. Install Git on the EC2 Instance

Once your EC2 instance is up and running, SSH into it and install Git:

```bash
sudo yum update -y
sudo yum install git -y

### 3. Install Git on the EC2 Instance

Once your EC2 instance is up and running, SSH into it and install Git:

```bash
sudo yum update -y
sudo yum install git -y

### 4. Clone GitHub Repository and Run Setup Script

Now, clone your GitHub repository and run the setup script to install all necessary dependencies:

```bash
git clone https://github.com/nasiaullas/FaultInjectionSimulator-KodeKloud.git
cd FaultInjectionSimulator-KodeKloud/Manual\ IDE
./pre-req-manual-ide.sh

### Clone FIS Workshop Experiments

Next, clone the FIS Workshop experiments repository:

```bash
git clone https://github.com/aws-samples/aws-fault-injection-simulator-workshop-v2.git



