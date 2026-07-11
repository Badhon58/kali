# Introduction to SIEM - Security Information Event Management

## What is SIEM ?

1. Security Information and event management (SIEM) is a security solution that
   - Collects logs from multiple sources
   - Normalizes and correlates them
   - Detects suspicious activity
   - Generates alerts and reports

2. Acts as the brain of a soc

## SIEM Core Funtions

1. Data Collection : logs from servers, firewalls, endpoints, cloud
2. Normalization : Standardizes different log formats
3. Corelation : Matches events to detect patterns
4. Alerting: Sends notifications for suspicious activities
5. Reporting : Compliance reports (PCI-DSS, HIPAA, ISO 27001.
6. Forensice & Investigation : Root cause analysis after an incident.

## SIEM Archetecture

Log Sources -> Collectors/Agents -> SIEM Core -> Dashboards/Reports
Example Flow : Endpoint logs -> Syslog -> SIEM server -> Analysis & Alerts

## Demo : Install Wazuh Manager + Dashboard
