# Terraform AWS Infrastructure

## Overview

Terraform was used to provision and manage SysCore cloud infrastructure in AWS.

The infrastructure was created from reusable Terraform configuration and verified against the actual AWS environment.

## Infrastructure

The SysCore environment includes:

* VPC
* Public subnet
* Internet Gateway
* Route table
* Security group
* EC2 instance
* IAM role
* EC2 instance profile
* AWS Systems Manager policy attachment

## Network Configuration

The VPC uses:

```text
10.20.0.0/16
```

The public subnet uses:

```text
10.20.1.0/24
```

The AWS region is:

```text
ap-south-1
```

## Security Group

The security group allows:

```text
Inbound:
TCP 22 from 10.20.0.0/16

Outbound:
All IPv4 traffic
```

SSH was not exposed directly to the public internet.

## EC2 Configuration

The SysCore server uses:

```text
Instance type: t3.micro
Ubuntu: 24.04
Root volume: 8 GB gp3
Storage encryption: enabled
IMDSv2: required
Public IPv4: disabled
```

## IAM and Systems Manager

An IAM role and instance profile were attached to the EC2 instance.

The role uses:

```text
AmazonSSMManagedInstanceCore
```

The AWS CLI was used to verify that the instance profile was attached and that the required policy was associated with the IAM role.

## Terraform Variables

Reusable variables were introduced for:

```text
AWS region
VPC CIDR
Public subnet CIDR
EC2 instance type
```

These values can be supplied through `terraform.tfvars`.

## Terraform Idempotency

Terraform was executed with:

```powershell
terraform plan
```

The result was:

```text
No changes. Your infrastructure matches the configuration.
```

This confirmed that the real AWS infrastructure matches the Terraform configuration.

## Terraform Workflow

```text
Terraform Configuration
        ↓
terraform init
        ↓
terraform validate
        ↓
terraform plan
        ↓
terraform apply
        ↓
AWS Infrastructure
        ↓
terraform plan
        ↓
No Changes
```

## Security and Cost Considerations

The lab avoided unnecessary infrastructure such as NAT gateways and additional EC2 instances.

The EC2 instance was configured without a public IPv4 address.

Terraform-generated state and local variable files are excluded from Git using `.gitignore`.

## Result

This lab demonstrates Infrastructure as Code using Terraform to provision, configure, verify, and manage AWS infrastructure in a controlled and repeatable way.
