## What are Windows Event Logs?

Centralized system to track OS and application activities
Key log types:

- Security Logs
- System logs
- Application logs

Helps in monitoring, troubleshooting, and detecting threats.

# Top 25 Windows Event IDs for SOC Analyst

---

## Event ID 4624 - Successful Logon

- _What it Represents_ : Logs a successful logon to a system.
- _Why it's Important_ : Essential for identifying whether a legitimate user or unauthorized attacker has accessed a system.
- _How Analysts Use It_ : Analysts track these events to verify if logins are coming from authorized users and if the login times, locations, or methods align with typical user behavior
- _Example use Case_ : An alert triggers when a user logs in from an unusual location , Which may indicate a compromised account.
- _Mitigation_ : Implement multi-factor authentication (MFA), use VPN for remote access, and enforce strong password policies.
- _Detection_ : Set alerts for logons from unusual IP addresses, geographic from accounts that rarely log in remotely.
- _Account lockout_ : Lock the account temporally

---

## Event ID 4625 - Failed Logon

- _What it Represents_ : Captures failed logon attempts, often due to incorrect credentials
- _Why it's Important_ : Repeated failed logins can indicate brute-force or credential stuffing attacks.
- _How Analysts Use it_ : Analysts monitor failed login attempts to identify abnormal login patterns, especially if coming from unfamiliar or blacklisted Ip address.
- _Example use Case_ : Multiple failed login attempts on a high-privilege account (admin, root) are detected, which may indicate an attacker trying to brute-force their waw in.
- _Mitigation_ : Set account lockout policies after a certain number of failed attempts and require MFA
- _Detection_ : Alert on multiple failed login attempts in a short period, especially for privileged accounts.

---

## Event ID 4648 - Logon Attempt Using Explicit Credentials

- _What It Represents_ : This event is logged when a process or service logs on using explicit credentials, such as credentials provided fro a network resource
- _Why It's Important_ : Can indicate lateral movement or escalation where credentials are explicitly passed for system access
- _How Analysts Use IT_ : Monitor these logins for unusual systems or accounts being accessed, especially during non-business hours.
- _Example use Case_ : An attacker compromises an account and uses explicit credentials to move laterally within the network.
- _Mitigation_ : Use least privilege access controls and restrict explicit credentials use to essential services only.
- _Detection_ : Set alerts for explicit credential usage for sensitive resources regular business activities

---

## Understanding Logon Types:

- **Logon Type = Usage**
  - 2 = Local interactive login
  - 3 = Network logon (SMB)
  - 10 = Remote desktop login
  - 5 = Service logon
  - 7 = unlock workstation

-> Always Monitor 4624, 4625, 4672
