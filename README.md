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


Each area contains practical tasks, verification, troubleshooting, automation, and documentation.

---

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


## Evidence

<img width="692" height="116" alt="01-syscore-user-group-sudo-administration" src="https://github.com/user-attachments/assets/0f10f76d-5153-4c66-85e3-dadd0a4120cf" />

<img width="799" height="206" alt="02 syscore-ufw-firewall-ssh-rule" src="https://github.com/user-attachments/assets/d6c2096b-ed68-4a2a-bd16-97a3322fa4b7" />

<img width="1487" height="397" alt="3 syscore-ssh-key-authentication" src="https://github.com/user-attachments/assets/58c972e4-e1ad-435d-a577-cf60e18b53b3" />

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


## Evidence

<img width="1680" height="636" alt="06 syscore-network-port-service-analysis" src="https://github.com/user-attachments/assets/405acfd1-7d38-4d70-bc5f-da2c30b8d9d5" />

<img width="731" height="154" alt="07-syscore-linux-routing-table-analysis" src="https://github.com/user-attachments/assets/463877d7-d3dc-4383-b6c2-e2a73bb5c73d" />

<img width="847" height="547" alt="09-syscore-network-connectivity-tests" src="https://github.com/user-attachments/assets/a652e1e1-9e36-4f45-b995-a566ee94a546" />

<img width="935" height="924" alt="30-syscore-troubleshooting-dns-resolution-recovery" src="https://github.com/user-attachments/assets/fdb499fd-d667-4480-aa49-f406e78e50ee" />

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


## Evidence

<img width="799" height="231" alt="3 syscore-nginx-virtual-host-working" src="https://github.com/user-attachments/assets/c7349f95-8ba4-4188-8e44-8fdbd8ed81a9" />

<img width="1487" height="397" alt="3 syscore-ssh-key-authentication" src="https://github.com/user-attachments/assets/4414c800-f211-4275-99a5-166706a2ed52" />

<img width="797" height="331" alt="4 syscore-ssh-local-login-success" src="https://github.com/user-attachments/assets/3895a626-a7b1-49c3-9a42-273e18389985" />

<img width="1448" height="619" alt="33-syscore-troubleshooting-systemd-service-failure" src="https://github.com/user-attachments/assets/bde946bc-0c50-4caf-9304-1738f207fb6b" />

<img width="1087" height="206" alt="34-syscore-troubleshooting-systemd-service-recovery" src="https://github.com/user-attachments/assets/7a8b5d73-d354-4709-9cd5-e151c9f1c9ad" />

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


## Evidence

<img width="902" height="825" alt="10-syscore-storage-filesystem-analysis" src="https://github.com/user-attachments/assets/a9836d2f-e699-4474-9d83-29a4447820eb" />

<img width="1029" height="190" alt="24-syscore-troubleshooting-disk-space-investigation" src="https://github.com/user-attachments/assets/fd3d8305-cfe8-44ec-9bed-72535c6a1735" />

<img width="1221" height="250" alt="40-syscore-troubleshooting-readonly-filesystem-failure" src="https://github.com/user-attachments/assets/2af9e81c-db66-4e11-938a-d3232877aa22" />

<img width="1008" height="205" alt="41-syscore-troubleshooting-readonly-filesystem-recovery" src="https://github.com/user-attachments/assets/5ea4c646-c781-4ba1-8441-957575bca2db" />

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


## Evidence

<img width="799" height="206" alt="02 syscore-ufw-firewall-ssh-rule" src="https://github.com/user-attachments/assets/869bcf9c-18e2-453e-aedf-ab4fe3cc58d4" />

<img width="1021" height="256" alt="12-syscore-file-permissions-security" src="https://github.com/user-attachments/assets/c4ea6466-9bcb-47e6-8ace-a9eaf5fff23e" />

<img width="1135" height="222" alt="13-syscore-user-group-security-audit" src="https://github.com/user-attachments/assets/2fcfafa9-dc6e-433a-8ae9-7d86aa9f4344" />

<img width="1522" height="362" alt="14-syscore-security-authentication-audit" src="https://github.com/user-attachments/assets/57c36083-c7db-4866-8d06-b342d45642ee" />

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


The project does not treat a backup as successful merely because a file was created. Restore verification is included to confirm recoverability.

## Evidence

<img width="1143" height="332" alt="15-syscore-backup-restore-verification" src="https://github.com/user-attachments/assets/32d63feb-b099-4362-ab01-5f0e2bf45d8a" />

<img width="924" height="658" alt="17-syscore-automated-backup-script" src="https://github.com/user-attachments/assets/e9bf4795-9c68-45f6-9e29-90c73aa1fc21" />

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


## Bash Administration

The scripts were designed around common administrative tasks rather than purely programming exercises.

## Evidence

<img width="924" height="317" alt="16-syscore-bash-system-information-script" src="https://github.com/user-attachments/assets/26945a65-4ed2-4f7d-ae49-404c1ba9f6b6" />

<img width="924" height="658" alt="17-syscore-automated-backup-script" src="https://github.com/user-attachments/assets/c5808b7e-da70-4b6d-abff-2e082ba5cf2e" />

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


Monitoring is also connected to the troubleshooting section, where resource and service information is used to diagnose failures.

## Supporting Evidence

<img width="1029" height="190" alt="24-syscore-troubleshooting-disk-space-investigation" src="https://github.com/user-attachments/assets/ad867f5f-d2e4-4471-931c-b67e96c7a508" />

<img width="838" height="135" alt="35-syscore-troubleshooting-high-cpu-process" src="https://github.com/user-attachments/assets/48ebef34-6de1-4b01-8273-88cfd1c02ffd" />

<img width="669" height="77" alt="36-syscore-troubleshooting-high-cpu-process-recovery" src="https://github.com/user-attachments/assets/a04ca682-c56f-461f-807d-284b72a68ce5" />

---

# 09 — Troubleshooting

## Purpose

Troubleshooting is one of the core operational skills demonstrated by SysCore.

Instead of only configuring a working system, controlled failures were created and then investigated and recovered.

## Troubleshooting Scenarios

The project includes:

### Nginx Failure

<img width="792" height="119" alt="20-syscore-troubleshooting-nginx-failure" src="https://github.com/user-attachments/assets/e609b2d6-9cb1-45f6-b2c7-c51ddebb5013" />

<img width="1122" height="357" alt="21-syscore-troubleshooting-nginx-recovery" src="https://github.com/user-attachments/assets/38863e1f-7866-4b0a-9ef1-e65600253b9c" />

### Disk Space

<img width="1029" height="190" alt="24-syscore-troubleshooting-disk-space-investigation" src="https://github.com/user-attachments/assets/6d3c1d02-6418-45a6-b05d-dd7d8d8755bc" />

### SSH Failure

<img width="776" height="117" alt="25-syscore-troubleshooting-ssh-service-failure" src="https://github.com/user-attachments/assets/ee62171a-2c9e-4004-b265-329ab76d8612" />

<img width="941" height="175" alt="26-syscore-troubleshooting-ssh-service-recovery" src="https://github.com/user-attachments/assets/85157f6a-7eda-4e55-85ac-69330e8e74e1" />

### Permission Failure

<img width="1298" height="153" alt="27-syscore-troubleshooting-permission-failure" src="https://github.com/user-attachments/assets/77719fea-688f-4344-ad80-720d27823e52" />

<img width="1298" height="419" alt="28-syscore-troubleshooting-permission-recovery" src="https://github.com/user-attachments/assets/ccc747dc-1410-48af-bd5d-5d5d8a98302b" />

### DNS Failure

<img width="794" height="262" alt="29-syscore-troubleshooting-dns-resolution-failure" src="https://github.com/user-attachments/assets/d3c5d1c5-3073-4195-8559-4271348c0c78" />

<img width="935" height="924" alt="30-syscore-troubleshooting-dns-resolution-recovery" src="https://github.com/user-attachments/assets/ad120866-9bfb-4e98-9eca-60de7da69049" />

### Port Conflict

<img width="1038" height="731" alt="31-syscore-troubleshooting-port-conflict" src="https://github.com/user-attachments/assets/10529d8a-da7a-4eb9-af50-8aeddeabada9" />

<img width="1038" height="343" alt="32-syscore-troubleshooting-port-conflict-recovery" src="https://github.com/user-attachments/assets/c5f5d762-ff19-4d48-aae1-912eddb7bda7" />

### systemd Failure

<img width="1448" height="619" alt="33-syscore-troubleshooting-systemd-service-failure" src="https://github.com/user-attachments/assets/4a7ae504-d2e2-48d2-9fa9-934e8ff407e9" />

<img width="1087" height="206" alt="34-syscore-troubleshooting-systemd-service-recovery" src="https://github.com/user-attachments/assets/08198c61-fc78-4130-b588-06aba4f24d68" />

### High CPU Process

<img width="838" height="135" alt="35-syscore-troubleshooting-high-cpu-process" src="https://github.com/user-attachments/assets/9538448c-0d39-45a7-bf97-b835258ee812" />

<img width="669" height="77" alt="36-syscore-troubleshooting-high-cpu-process-recovery" src="https://github.com/user-attachments/assets/1c65d346-6acc-48f1-9b76-e50c73156df3" />

### Read-only Filesystem

<img width="1221" height="250" alt="40-syscore-troubleshooting-readonly-filesystem-failure" src="https://github.com/user-attachments/assets/cbe0a9f6-c5bf-4dce-b246-3e15a2d00bbe" />

<img width="1008" height="205" alt="41-syscore-troubleshooting-readonly-filesystem-recovery" src="https://github.com/user-attachments/assets/94a139b0-6025-4e4e-9a3c-7557f47bfbbb" />

## Troubleshooting Method

Every failure follows the same operational approach:

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

<img width="1915" height="542" alt="43-syscore-ansible-first-playbook-execution" src="https://github.com/user-attachments/assets/8f19e000-ef2a-4ec4-b411-71e51d149162" />

<img width="1915" height="785" alt="44-syscore-ansible-configuration-management-idempotency" src="https://github.com/user-attachments/assets/4bdd40a1-a0aa-4675-ae93-5976ca324396" />

## Service and Package Management

<img width="1915" height="417" alt="45-syscore-ansible-service-management" src="https://github.com/user-attachments/assets/f5ff75de-14b1-478a-a28b-f94d772e6328" />

## File Permissions

<img width="1917" height="402" alt="46-syscore-ansible-file-permissions-management" src="https://github.com/user-attachments/assets/eff40dd6-8b59-441f-8985-511307b469c1" />

## Templates and Facts

<img width="1917" height="430" alt="48-syscore-ansible-template-configuration" src="https://github.com/user-attachments/assets/c3bff01a-90ef-4fc1-97d7-8f25a7afb85d" />

<img width="1917" height="552" alt="49-syscore-ansible-variables-and-facts" src="https://github.com/user-attachments/assets/2b8bc6a5-6fd5-49ba-a53d-0650e519ce94" />

## Conditionals and Loops

<img width="1917" height="530" alt="50-syscore-ansible-conditionals-and-loops" src="https://github.com/user-attachments/assets/41536634-4e77-4ff2-8115-698b4bd65cc6" />

## Secrets

<img width="1917" height="608" alt="51-syscore-ansible-vault-secret-management" src="https://github.com/user-attachments/assets/2397e94c-e22c-4143-886e-437366820360" />

Sensitive values were encrypted using Ansible Vault instead of being stored directly as plaintext.

## Integrated Automation

<img width="1917" height="621" alt="52-syscore-ansible-integrated-automation" src="https://github.com/user-attachments/assets/bff20abf-1eeb-4135-9e24-ec899e371e61" />

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

# Security Principles

Security considerations were applied throughout the project rather than only in the security section.

```
```
# Author

**Udeesha Jayendra**
---

