# SysCore — System Administration, Automation & Cloud Infrastructure

![Ubuntu](https://img.shields.io/badge/OS-Ubuntu-orange?logo=ubuntu)
![Linux](https://img.shields.io/badge/Linux-System%20Administration-black?logo=linux)
![Bash](https://img.shields.io/badge/Bash-Automation-black?logo=gnubash)
![Ansible](https://img.shields.io/badge/Ansible-Automation-red?logo=ansible)
![Terraform](https://img.shields.io/badge/Terraform-IaC-844FBA?logo=terraform)
![AWS](https://img.shields.io/badge/AWS-Cloud-232F3E?logo=amazonaws)
![Git](https://img.shields.io/badge/Git-Version%20Control-F05032?logo=git)

## About SysCore

**SysCore** is a practical system administration and infrastructure engineering project built to develop and demonstrate the complete lifecycle of managing modern infrastructure.

The project covers **Linux administration, networking, services, storage, security, backups, automation, monitoring, troubleshooting, Ansible, Terraform, and AWS** as connected but individually important skill areas.

The project was intentionally developed from the fundamentals upward:

<img width="1408" height="768" alt="g" src="https://github.com/user-attachments/assets/aba14fb6-c140-452d-90ae-906ba76d9f2a" />

```text
Linux Administration
        ↓
Networking
        ↓
Services
        ↓
Storage
        ↓
Security
        ↓
Backups
        ↓
Automation
        ↓
Monitoring
        ↓
Troubleshooting
        ↓
Ansible
        ↓
Terraform
        ↓
AWS
```

Each area contains practical tasks, verification, troubleshooting, automation, and documentation.

---

# Project Goals

SysCore was built to demonstrate practical ability to:

* Administer Ubuntu/Linux systems
* Manage users, groups, permissions, and privileges
* Understand and troubleshoot TCP/IP networking
* Configure and manage Linux services
* Administer storage and filesystems
* Apply Linux security controls
* Create and verify backups
* Automate repetitive administration tasks
* Monitor system health and services
* Diagnose failures and perform recovery
* Automate administration with Ansible
* Manage secrets with Ansible Vault
* Provision infrastructure using Terraform
* Apply cloud infrastructure and security concepts with AWS
* Use Git and GitHub for version-controlled infrastructure work

---

# Technology Stack

| Area                     | Technologies                                            |
| ------------------------ | ------------------------------------------------------- |
| Operating System         | Ubuntu Linux                                            |
| Networking               | TCP/IP, routing, ports, DNS                             |
| Services                 | systemd, Nginx, OpenSSH                                 |
| Storage                  | Filesystems, disk management, Linux storage tools       |
| Security                 | UFW, SSH keys, permissions, authentication auditing     |
| Backups                  | Bash, archive and restore workflows                     |
| Automation               | Bash scripting                                          |
| Monitoring               | Linux monitoring utilities and administration scripts   |
| Troubleshooting          | Linux diagnostic tools and controlled failure scenarios |
| Configuration Management | Ansible                                                 |
| Secret Management        | Ansible Vault                                           |
| Infrastructure as Code   | Terraform                                               |
| Cloud                    | Amazon Web Services                                     |
| Version Control          | Git / GitHub                                            |

---

# Core Skill Areas

SysCore is divided into **13 equally important technical areas**:

|  # | Area                 | Focus                                            |
| -: | -------------------- | ------------------------------------------------ |
| 01 | Linux Administration | Users, groups, sudo, permissions, processes      |
| 02 | Networking           | Interfaces, routing, ports, connectivity, DNS    |
| 03 | Services             | systemd, SSH, Nginx, service lifecycle           |
| 04 | Storage              | Filesystems, disk usage, storage troubleshooting |
| 05 | Security             | Firewall, authentication, permissions, auditing  |
| 06 | Backups              | Backup, restore, verification, recovery          |
| 07 | Automation           | Bash administration scripts and repeatable tasks |
| 08 | Monitoring           | System health, disks, services, resource checks  |
| 09 | Troubleshooting      | Failure diagnosis, recovery, verification        |
| 10 | Ansible              | Configuration management and automation          |
| 11 | Terraform            | Infrastructure as Code                           |
| 12 | AWS                  | Cloud networking, EC2, IAM, security             |
| 13 | Git / GitHub         | Version control and project documentation        |

---

# 01 — Linux Administration

## Purpose

Linux administration is the foundation of SysCore.

The project began with fundamental administrative operations required to manage a Linux server safely and effectively.

## Practical Work

The Linux administration section covers:

* User creation and management
* Group administration
* Sudo privileges
* File ownership
* Linux permission modes
* Process inspection
* Administrative commands
* System information
* Filesystem inspection
* Basic server administration

Examples of administrative concepts practiced:

```text
Users
 ↓
Groups
 ↓
Privileges
 ↓
Permissions
 ↓
Processes
 ↓
System Administration
```

## Evidence

![User Group Sudo Administration](./docs/screenshots/01-syscore-user-group-sudo-administration.png)

![File Permissions](./docs/screenshots/12-syscore-file-permissions-security.png)

![User Group Security Audit](./docs/screenshots/13-syscore-user-group-security-audit.png)

---

# 02 — Networking

## Purpose

The networking section develops practical understanding of how Linux systems communicate with other systems and services.

## Practical Work

Covered areas include:

* Network interfaces
* IPv4 addressing
* TCP/UDP ports
* Routing tables
* Default routes
* Connectivity testing
* Service port analysis
* DNS resolution
* Network troubleshooting

The project used command-line tools to inspect and verify network behavior rather than relying only on graphical tools.

## Networking Workflow

```text
Inspect Interface
      ↓
Check Addressing
      ↓
Check Routing
      ↓
Check Ports
      ↓
Test Connectivity
      ↓
Investigate DNS
```

## Evidence

![Network Port Service Analysis](./docs/screenshots/06-syscore-network-port-service-analysis.png)

![Linux Routing Table Analysis](./docs/screenshots/07-syscore-linux-routing-table-analysis.png)

![Network Connectivity Tests](./docs/screenshots/09-syscore-network-connectivity-tests.png)

![DNS Resolution Recovery](./docs/screenshots/30-syscore-troubleshooting-dns-resolution-recovery.png)

---

# 03 — Services

## Purpose

Linux servers depend on services such as web servers, SSH, and systemd-managed processes.

SysCore demonstrates how services are configured, controlled, tested, and recovered.

## Practical Work

Covered services and concepts include:

* Nginx
* OpenSSH
* systemd
* Service start/stop/restart
* Service status
* Service failure investigation
* Service recovery
* Port/service relationships

The project also connects service administration with networking by verifying which ports services are listening on.

## Service Lifecycle

```text
Install
  ↓
Configure
  ↓
Start
  ↓
Verify
  ↓
Monitor
  ↓
Troubleshoot
  ↓
Recover
```

## Evidence

![Nginx Virtual Host](./docs/screenshots/03-syscore-nginx-virtual-host-working.png)

![SSH Key Authentication](./docs/screenshots/04-syscore-ssh-key-authentication.png)

![SSH Local Login Success](./docs/screenshots/05-syscore-ssh-local-login-success.png)

![systemd Service Failure](./docs/screenshots/33-syscore-troubleshooting-systemd-service-failure.png)

![systemd Service Recovery](./docs/screenshots/34-syscore-troubleshooting-systemd-service-recovery.png)

---

# 04 — Storage

## Purpose

Storage administration is required to keep Linux systems healthy and prevent disk-related failures.

## Practical Work

The project covers:

* Filesystem inspection
* Disk usage analysis
* Storage capacity checks
* Directory usage investigation
* Read-only filesystem troubleshooting
* Storage-related recovery

Typical investigation:

```text
Check Disk Usage
      ↓
Identify Problem Filesystem
      ↓
Inspect Mount
      ↓
Investigate Cause
      ↓
Apply Recovery
      ↓
Verify Filesystem
```

## Evidence

![Storage Filesystem Analysis](./docs/screenshots/10-syscore-storage-filesystem-analysis.png)

![Disk Space Investigation](./docs/screenshots/24-syscore-troubleshooting-disk-space-investigation.png)

![Read-only Filesystem Failure](./docs/screenshots/40-syscore-troubleshooting-readonly-filesystem-failure.png)

![Read-only Filesystem Recovery](./docs/screenshots/41-syscore-troubleshooting-readonly-filesystem-recovery.png)

---

# 05 — Security

## Purpose

Security is treated as a continuous administration responsibility rather than a separate final step.

## Practical Work

SysCore covers:

* UFW firewall administration
* SSH key authentication
* User/group security
* Sudo privileges
* File ownership
* Permission modes
* Authentication auditing
* Least-privilege concepts
* Security verification

## Security Model

```text
Identity
   ↓
Authentication
   ↓
Authorization
   ↓
Permissions
   ↓
Firewall
   ↓
Auditing
```

## Evidence

![UFW Firewall SSH Rule](./docs/screenshots/02-syscore-ufw-firewall-ssh-rule.png)

![File Permissions Security](./docs/screenshots/12-syscore-file-permissions-security.png)

![User Group Security Audit](./docs/screenshots/13-syscore-user-group-security-audit.png)

![Authentication Audit](./docs/screenshots/14-syscore-security-authentication-audit.png)

---

# 06 — Backups

## Purpose

Backups protect systems and data from accidental deletion, corruption, configuration errors, and operational failures.

SysCore includes both **backup creation and restore verification**.

## Practical Work

The backup section demonstrates:

* Backup scripting
* Automated backup creation
* Backup verification
* Restore operations
* Recovery validation

## Backup Workflow

```text
Source Data
    ↓
Backup Script
    ↓
Backup Archive
    ↓
Verification
    ↓
Restore
    ↓
Recovery Verification
```

The project does not treat a backup as successful merely because a file was created. Restore verification is included to confirm recoverability.

## Evidence

![Backup Restore Verification](./docs/screenshots/15-syscore-backup-restore-verification.png)

![Automated Backup Script](./docs/screenshots/17-syscore-automated-backup-script.png)

---

# 07 — Automation

## Purpose

Automation reduces repetitive manual administration and makes operational procedures repeatable.

Before introducing Ansible and Terraform, SysCore developed practical automation using Bash.

## Practical Work

Automation tasks include:

* System information collection
* Disk checking
* Service checking
* Backup automation
* Repeatable administrative tasks

Example progression:

```text
Manual Command
      ↓
Repeated Task
      ↓
Bash Script
      ↓
Repeatable Operation
      ↓
Automation
```

## Bash Administration

The scripts were designed around common administrative tasks rather than purely programming exercises.

## Evidence

![System Information Script](./docs/screenshots/16-syscore-bash-system-information-script.png)

![Automated Backup Script](./docs/screenshots/17-syscore-automated-backup-script.png)

---

# 08 — Monitoring

## Purpose

Monitoring provides visibility into system health before failures become larger operational problems.

The monitoring section focuses on practical Linux health checks.

## Practical Work

Monitoring concepts include:

* Disk usage checks
* Service status checks
* Resource information
* System health inspection
* Process/resource observation
* Administrative health scripts

The project uses command-line tools and custom scripts to collect operational information.

## Monitoring Workflow

```text
Collect Metrics
      ↓
Inspect System State
      ↓
Detect Abnormal Condition
      ↓
Investigate
      ↓
Take Action
      ↓
Verify
```

Monitoring is also connected to the troubleshooting section, where resource and service information is used to diagnose failures.

## Supporting Evidence

![Disk Space Investigation](./docs/screenshots/24-syscore-troubleshooting-disk-space-investigation.png)

![High CPU Process](./docs/screenshots/35-syscore-troubleshooting-high-cpu-process.png)

![High CPU Process Recovery](./docs/screenshots/36-syscore-troubleshooting-high-cpu-process-recovery.png)

---

# 09 — Troubleshooting

## Purpose

Troubleshooting is one of the core operational skills demonstrated by SysCore.

Instead of only configuring a working system, controlled failures were created and then investigated and recovered.

## Troubleshooting Scenarios

The project includes:

### Nginx Failure

![Nginx Failure](./docs/screenshots/20-syscore-troubleshooting-nginx-failure.png)

![Nginx Recovery](./docs/screenshots/21-syscore-troubleshooting-nginx-recovery.png)

### Disk Space

![Disk Space](./docs/screenshots/24-syscore-troubleshooting-disk-space-investigation.png)

### SSH Failure

![SSH Failure](./docs/screenshots/25-syscore-troubleshooting-ssh-service-failure.png)

![SSH Recovery](./docs/screenshots/26-syscore-troubleshooting-ssh-service-recovery.png)

### Permission Failure

![Permission Failure](./docs/screenshots/27-syscore-troubleshooting-permission-failure.png)

![Permission Recovery](./docs/screenshots/28-syscore-troubleshooting-permission-recovery.png)

### DNS Failure

![DNS Failure](./docs/screenshots/29-syscore-troubleshooting-dns-resolution-failure.png)

![DNS Recovery](./docs/screenshots/30-syscore-troubleshooting-dns-resolution-recovery.png)

### Port Conflict

![Port Conflict](./docs/screenshots/31-syscore-troubleshooting-port-conflict.png)

![Port Conflict Recovery](./docs/screenshots/32-syscore-troubleshooting-port-conflict-recovery.png)

### systemd Failure

![systemd Failure](./docs/screenshots/33-syscore-troubleshooting-systemd-service-failure.png)

![systemd Recovery](./docs/screenshots/34-syscore-troubleshooting-systemd-service-recovery.png)

### High CPU Process

![High CPU](./docs/screenshots/35-syscore-troubleshooting-high-cpu-process.png)

![High CPU Recovery](./docs/screenshots/36-syscore-troubleshooting-high-cpu-process-recovery.png)

### Read-only Filesystem

![Filesystem Failure](./docs/screenshots/40-syscore-troubleshooting-readonly-filesystem-failure.png)

![Filesystem Recovery](./docs/screenshots/41-syscore-troubleshooting-readonly-filesystem-recovery.png)

## Troubleshooting Method

Every failure follows the same operational approach:

```text
Detect
  ↓
Collect Evidence
  ↓
Identify Root Cause
  ↓
Apply Corrective Action
  ↓
Verify Recovery
  ↓
Document
```

---

# 10 — Ansible

## Purpose

Ansible extends SysCore from manual administration and Bash scripting into configuration management and infrastructure automation.

## Practical Work

The Ansible section covers:

* Inventory
* Playbooks
* Configuration management
* Service management
* Package management
* User management
* File permissions
* Handlers
* Templates
* Variables
* Facts
* Conditionals
* Loops
* Ansible Vault
* Integrated automation

## Configuration Management

![Ansible First Playbook](./docs/screenshots/43-syscore-ansible-first-playbook-execution.png)

![Configuration Management](./docs/screenshots/44-syscore-ansible-configuration-management-idempotency.png)

## Service and Package Management

![Ansible Service Management](./docs/screenshots/45-syscore-ansible-service-management.png)

## File Permissions

![Ansible File Permissions](./docs/screenshots/46-syscore-ansible-file-permissions-management.png)

## Templates and Facts

![Ansible Template](./docs/screenshots/48-syscore-ansible-template-configuration.png)

![Variables and Facts](./docs/screenshots/49-syscore-ansible-variables-and-facts.png)

## Conditionals and Loops

![Conditionals and Loops](./docs/screenshots/50-syscore-ansible-conditionals-and-loops.png)

## Secrets

![Ansible Vault](./docs/screenshots/51-syscore-ansible-vault-secret-management.png)

Sensitive values were encrypted using Ansible Vault instead of being stored directly as plaintext.

## Integrated Automation

![Integrated Ansible Automation](./docs/screenshots/52-syscore-ansible-integrated-automation.png)

The final Ansible exercise combined:

Idempotency was verified by running automation repeatedly and confirming that unnecessary changes were not made.

---

# 11 — Terraform

## Purpose

Terraform introduces Infrastructure as Code into SysCore.

Instead of manually creating cloud infrastructure, the infrastructure is defined declaratively in version-controlled configuration files.

## Practical Work

The Terraform section demonstrates:

* Terraform provider configuration
* AWS provider authentication
* Terraform initialization
* Validation
* Planning
* Infrastructure deployment
* Variables
* Outputs
* Terraform state
* Security Groups
* EC2
* IAM
* Infrastructure verification
* Infrastructure destruction

## Reusable Configuration

Terraform variables were used for values such as:

```text
AWS Region
VPC CIDR
Subnet CIDR
EC2 Instance Type
```

This allows the configuration to be reused without changing the infrastructure logic.

## Idempotency

Terraform was executed after deployment and reported:

```text
No changes. Your infrastructure matches the configuration.
```

This verified that the actual infrastructure matched the declared Terraform configuration.

## Evidence

![Terraform AWS Deployment](./docs/screenshots/53-cloud-terraform-applying.png)

---

# 12 — AWS Cloud Infrastructure

## Purpose

AWS is used as the cloud infrastructure layer of SysCore.

The goal was not to build a large cloud architecture, but to demonstrate practical infrastructure administration and security concepts using a controlled environment.

## AWS Region

```text
ap-south-1
```

## VPC

```text
CIDR: 10.20.0.0/16
```

## Subnet

```text
CIDR: 10.20.1.0/24
Availability Zone: ap-south-1a
```
```

```

## Security Group

The security group was configured with restricted SSH access

## EC2

The lab used a single small EC2 instance:

## IAM

An EC2 IAM role and instance profile were created for Systems Manager integration.

```

```

This avoided leaving the laboratory infrastructure running unnecessarily.


# 13 — Git & GitHub

## Purpose

GitHub is used as the version-controlled project history and portfolio platform for SysCore.


Terraform-generated state and local Terraform working directories are excluded from version control.

---
---

# Security Principles

Security considerations were applied throughout the project rather than only in the security section.


```
```
# Author

**Udeesha Jayendra**
---

