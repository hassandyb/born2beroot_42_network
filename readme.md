# Born2beRoot

## Overview
The Born2beRoot project is designed to introduce you to the world of system administration through virtualization. In this project, you'll set up your first virtual machine using VirtualBox or UTM, configure a minimal server environment, and implement various security and configuration rules.

## Project Goals
- Set up a virtual machine using VirtualBox (or UTM).
- Install and configure a minimal server environment without graphical interfaces.
- Implement and enforce security policies and configurations.
- Develop a monitoring script to provide real-time server information.

## Features

### Mandatory Configuration
- **Operating System**: Choose either the latest stable version of Debian or Rocky Linux.
  - **Debian**: Recommended for beginners.
  - **Rocky Linux**: More complex, requires SELinux configuration.
- **Encryption**: Create at least two encrypted partitions using LVM.
- **Hostname**: Configure the hostname to include your login ending with `42`.
- **SSH**: SSH service must run on port 4242, with root login disabled.
- **Firewall**: Configure UFW (Debian) or firewalld (Rocky) to only allow port 4242.
- **Password Policy**:
  - Expire every 30 days.
  - Minimum of 10 characters, including uppercase, lowercase, and digits.
  - No more than 3 consecutive identical characters.
  - Passwords must not include the username and must differ from previous passwords.
- **Sudo Configuration**:
  - Limit authentication attempts to 3.
  - Display a custom error message on authentication failure.
  - Archive sudo actions in `/var/log/sudo/`.
  - Enable TTY mode and restrict executable paths.

### Monitoring Script
- **Script Name**: `monitoring.sh`
- **Functionality**:
  - Display server architecture, kernel version, and hardware details.
  - Report RAM and storage usage, CPU load, and system uptime.
  - Indicate LVM status, active connections, user logins, and network details.
  - Show the number of sudo commands executed.
- **Execution**: Runs every 10 minutes and broadcasts information to all terminals.

## Implementation Details

### Virtual Machine Setup
1. **Create a VM**:
   - Use VirtualBox or UTM.
   - Install the chosen OS (Debian or Rocky Linux).
2. **System Configuration**:
   - Install minimal services, avoiding any graphical interface.
   - Configure LVM and set up encrypted partitions.
   - Install and configure SSH, firewall, and sudo as per requirements.

### Password Policy and Sudo Configuration
- **Password Policy**:
  - Configure using tools like `pam_pwquality` or `passwd`.
- **Sudo Configuration**:
  - Edit `/etc/sudoers` for custom settings.

### Monitoring Script
- **Script Location**: Place in a directory accessible at startup.
- **Content**:
  - Use bash commands and utilities (e.g., `top`, `df`, `free`, `ifconfig`, `last`) to gather information.
  - Use `crontab` to schedule script execution.

## Submission
- **File to Submit**: `signature.txt` containing the signature of your virtual disk.
- **Evaluation**:
  - Ensure all configurations and policies are implemented as specified.
  - Be prepared to demonstrate and explain your setup during the defense.

## Additional Notes
- **Security**: Ensure no graphical interface or unnecessary services are installed.
- **Compliance**: Verify that all security and configuration requirements are met before submission.

---

This `README.md` provides an overview of the Born2beRoot project, outlines the mandatory and bonus tasks, and gives guidance on implementation and submission.
