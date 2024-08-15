#!/bin/bash

# Update the package list
yum update -y

# Install the latest Node.js
curl -fsSL https://rpm.nodesource.com/setup_current.x | bash -
yum install -y nodejs

# Install Git and Docker
yum install -y git docker

# Start and enable Docker service
systemctl start docker
systemctl enable docker

# Install AWS CDK
npm install -g aws-cdk --force

# Install kubectl
curl -o kubectl https://s3.us-west-2.amazonaws.com/amazon-eks/1.29.0/2024-01-04/bin/linux/amd64/kubectl
chmod +x kubectl
mv kubectl /usr/local/bin/

# Install Helm
curl --location "https://get.helm.sh/helm-v3.13.0-linux-amd64.tar.gz" | tar xz -C /tmp
mv /tmp/linux-amd64/helm /usr/local/bin/helm

# Install eksctl
curl --location "https://github.com/weaveworks/eksctl/releases/latest/download/eksctl_$(uname -s)_amd64.tar.gz" | tar xz -C /tmp
mv /tmp/eksctl /usr/local/bin/

# Echo versions to verify installation
echo "Node.js version:"
node -v

echo "npm version:"
npm -v

echo "Git version:"
git --version

echo "Docker version:"
docker --version

echo "AWS CDK version:"
cdk --version

echo "kubectl version:"
kubectl version --client --short

echo "Helm version:"
helm version --short

echo "eksctl version:"
eksctl version

echo "Environment setup complete."

