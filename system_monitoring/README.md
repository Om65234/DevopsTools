# System Monitoring Tool

Bash script for monitoring CPU, RAM, storage, processes, and ports with email alerts.

## Features
- CPU, RAM, and storage monitoring with configurable thresholds
- Critical process and port monitoring
- Email alerts via Gmail SMTP

## Configuration
```bash
CPU_THRESHOLD=80
RAM_THRESHOLD=80
STORAGE_THRESHOLD=80
CRITICAL_PROCESSES="nginx apache2 mysql sshd"
CRITICAL_PORTS="22 80 443 3306"
EMAIL_ID="your-email@gmail.com"
APP_PASSWORD="your-app-password"
```

## Usage
```bash
chmod +x system_monitoring.sh
./system_monitoring.sh
```

## Gmail Setup
1. Enable 2FA on Gmail
2. Generate app password in Google Account settings
3. Update EMAIL_ID and APP_PASSWORD variables

## Automation
```bash
# Run every 5 minutes
*/5 * * * * /path/to/system_monitoring.sh
```