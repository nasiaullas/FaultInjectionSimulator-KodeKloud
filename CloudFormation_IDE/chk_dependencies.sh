#!/bin/bash

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
kubectl version --client

echo "Helm version:"
helm version --short

echo "eksctl version:"
eksctl version

echo "Environment setup complete."
