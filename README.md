# Fault Injection Simulator - KodeKloud

This repository contains a CloudFormation template to set up an AWS Fault Injection Simulator (FIS) experiment. The experiment is designed to terminate half of the instances in an auto-scaling group.

# Warning
Note: Running this lab will INCUR COSTS. Please review your resources and budgeting before proceeding. Additionally, be sure to clean up resources as per lab instructions towards the end of the course. to avoid unnecessary charges.

Please check for Lesson "Cleanup Process" under the Conclusion Section and follow along all instructions to avoid any charges


## Table of Contents

- [Description](#description)
- [Resources](#resources)
- [Parameters](#parameters)
- [Usage](#usage)
- [Notes](#notes)
- [License](#license)

## Description

The CloudFormation template in this repository sets up an AWS FIS experiment template. This experiment terminates 50% of the EC2 instances in a specific auto-scaling group. The experiment includes a wait period to observe the impact of the instance termination.

## Resources

- **FisWorkshopTemplate**: An `AWS::FIS::ExperimentTemplate` resource that defines the experiment.
  - **Description**: Terminate half of the instances in the auto-scaling group.
  - **Tags**: A tag to identify the experiment.
  - **Actions**:
    - **FisWorkshopAsg-TerminateInstances**: Terminates instances.
    - **Wait**: Waits for a specified duration.
  - **Targets**:
    - **FisWorkshopAsg-50Percent**: Specifies the instances to target, selecting 50% of running instances.
  - **StopConditions**: Defines conditions to stop the experiment.
  - **RoleArn**: IAM role used by FIS to perform the actions.
  - **LogConfiguration**: Configuration for logging experiment actions to CloudWatch.

## Parameters

No parameters are required for this template.

## Usage

### Prerequisites

- An AWS account with necessary permissions to create FIS experiments, IAM roles, and CloudWatch log groups.
- An existing auto-scaling group with instances tagged appropriately for the experiment.

### Steps

1. Clone the repository:
    ```sh
    git clone https://github.com/nasiaullas/FaultInjectionSimulator-KodeKloud.git
    cd FaultInjectionSimulator-KodeKloud
    ```

2. Deploy the CloudFormation stack:
    ```sh
    aws cloudformation create-stack --stack-name FISWorkshopStack --template-body file://intro-experiment-cfn-template.json --capabilities CAPABILITY_NAMED_IAM
    ```

3. Monitor the stack creation in the AWS CloudFormation Console.

4. Once the stack is created, navigate to the AWS FIS Console to start the experiment.

### Clean Up

To delete the stack and all related resources:
```sh
aws cloudformation delete-stack --stack-name FISWorkshopStack
