# External Host Requirements for PSF Salt Management

This document outlines the requirements and processes for external hosts that will be managed by the 
Python Software Foundation's Salt infrastructure.

## Overview

When providing hardware for PSF services, your serve will be managed through our Salt configuration management system. 
This document details the network, security, and access requirements for integration with our infrastructure.

## Network Requirements

### Required Ports

Your server MUST allow **outbound** connections to the following ports on our Salt master:

| Port     | Protocol | Purpose                      | Salt Master        |
|----------|----------|------------------------------|--------------------|
| **4505** | TCP      | Salt Publisher (ZeroMQ)      | salt-master.psf.io |
| **4506** | TCP      | Salt Request Server (ZeroMQ) | salt-master.psf.io |

### Inbound Access Requirements

Your server MUST allow **inbound** connections on:

| Port   | Protocol | Purpose        | Access        |
|--------|----------|----------------|---------------|
| **22** | TCP      | SSH Management | PSF Sysadmins |

### DNS Requirements

- Preferrably, the Server will be accessible via a stable DNS name
- PSF Salt master is accessible at `salt-master.psf.io`
- Static IP address preferred (IP changes require coordination)

## Security Configuration

### SSH Access

**Initial Setup:**
- Root SSH access required for initial bootstrap
- SSH key-based authentication only (no password authentication)
  - Source keys from GitHub profiles ([@JacobCoffee](https://github.com/JacobCoffee.keys), [@ewdurbin](https://github.com/ewdurbin.keys)) 

> **Note**: Root login will be disabled after user accounts are created

**Production Access:**
- SSH access provided to PSF sysadmins and service managers
- All access through SSH keys managed in Salt pillar data
- No direct root access after initial setup

### System Hardening

Salt will automatically apply comprehensive security hardening (see [Salt harden state](../salt/base/harden)):

**SSH Hardening:**
- Root login disabled after bootstrap
- Password authentication disabled
- Strong cryptographic algorithms only
- Connection limits and timeout controls
- X11 forwarding disabled

**System Security:**
- Firewall rules (iptables) with default deny policy
- File system permissions hardened
- Core dumps disabled
- Account lockout policies (5 failed attempts = 10 minute lockout)
- System resource limits configured

**Network Security:**
- Stateful firewall with connection tracking
- IPv4 and IPv6 rules applied
- Only explicitly allowed ports accessible
- Internal network traffic restrictions

## User Management

### User Accounts

**User Management:**
- Created from PSF pillar data (see [Salt users pillar data](../pillar/base/users))
- The pillar data determines, per service, which users are created, their roles (root, etc.), and their SSH keys
- Sudo access granted to `psf-admin` group (see [Salt sudo pillar data](../pillar/base/sudoers/init.sls))

### SSH Key Management

**Key Sources:**
- SSH keys stored in Salt pillar data
- Automated key rotation capabilities via Salt highstate runs and Git repository updates

**Key Deployment:**
- Keys automatically deployed during Salt runs
- `authorized_keys` files managed by Salt
- Revocation through pillar data updates

## Security Updates

### Automatic Updates

Salt configures Ubuntu's unattended upgrades:

**Update Sources:**
- Ubuntu security updates
- Ubuntu stable updates
- Critical package updates

**Configuration:**
- Automatic installation of security updates
- Email notifications to `infrastructure-staff@python.org` (see [Salt unattended-upgrades](../salt/unattended-upgrades/config/50unattended-upgrades))

**Monitoring:**
- Monitoring generally happens through Sentry or Datadog metric checks.
