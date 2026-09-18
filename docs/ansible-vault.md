# Ansible Vault

## Overview

Ansible Vault was used to encrypt sensitive variables so that secret values are not stored in plaintext.

## Encrypted Variables

The Vault file is:

`ansible/inventory/group_vars/local/vault.yml`

The file begins with:

```text
$ANSIBLE_VAULT;1.1;AES256
```

This confirms that the variables are encrypted.

## Vault Test

A playbook was created:

`ansible/playbooks/vault-test.yml`

The playbook verifies that the encrypted variable is successfully loaded without displaying its value.

It was executed with:

```bash
ansible-playbook -i ansible/inventory/hosts.ini ansible/playbooks/vault-test.yml --ask-vault-pass
```

The verification task returned:

```text
Vault secret loaded successfully
```

The playbook completed successfully:

```text
ok=2 changed=0 failed=0
```

## Security Practice

The actual secret value was never displayed in the terminal output or portfolio screenshot.

The Vault password should be kept separate from the Git repository.

## Workflow

```text
Create Secret
     ↓
Encrypt with Ansible Vault
     ↓
Store Encrypted File
     ↓
Run Playbook with Vault Password
     ↓
Decrypt During Execution
     ↓
Use Secret Without Exposing It
```

