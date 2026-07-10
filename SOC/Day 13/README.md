# Linux Log

## Why Are Linux logs Important?

Linux logs act as digital footprints. Whether an attacker tries privilege escalation or an inside misuses sudo, the log files catch it all - if you know where to look.

Logs track everything : boot process, user login, network activity, services, sudo commands.

- **Used for** :
  - Security monitoring.
  - Intrusion detection
  - Troubleshooting

## Common Linux Log Locations

| location                             | Use                      |
| ------------------------------------ | ------------------------ |
| /var/log/auth/log or /var/log/secure | Login attempts, sudo SSH |
| var/log/syslog or /var/log/messages  | System-wide Logs         |
| /var/log/dmesg                       | hardware logs            |
| /var/log/failog                      | Failed Login Attempts    |
| var/log/lastlog                      | Last login per user      |
| /var/log/httpd/ or /var/log/nginx/   | Web server logs          |
| /var/log/boot.log                    | Boot-Related events      |
| /var/log/cron                        | Scheduled Job executions |
| /var/log/kern.log                    | Kernel issues            |
| /var/log/btmp                        | Failed login records     |

---

## Understanding /var/log/auth.log

- _This log is critical to identify_
  - Successful / Failed SSH login attempts
  - Unusual sudo access
  - Brute-force attack detection
- _Contains_ : SSH login attempts, sudo activity, PAN (Pluggable Authentication Module) logs.
- _Example_ : Jan 01 10:22:33 ubuntu sshd[1234] : Accepted password for user1 from IP.

## Analyzing Sudo usage

- Logs show which command was run with sudo, by whom, from where. Important in tracking privilege abuse.
- _What to look for_ :
  - Unauthorized users using sudo
  - Escalation attempts
  - Timestamp correlation
- Log sample:
  - Jan 01 10:25:00 ....

## Failed Login Analysis

- Monitor for brute-force attacks. Identify suspicious login attempts, especially with IPs and usernames.
- Check /var/log/failog and /var/log/auth/log
- _Use_ :
  - failog -a
  - grep "Failed Password" /var/log/auth.log

---

## Demo 1 : Investigate SSH logins and sudo usage using /var/log/auth.log

| Usages                         | Command                                  |
| ------------------------------ | ---------------------------------------- |
| View Last 50 auth log lines    | tail -n 50 /var/logauth.log              |
| Show all sudo access logs      | grep "sudo" /var/log/auth.log            |
| Show all failed login attempts | grep "Failed password" /var/log/auth.log |
| Show all accepted SSH Logins   | grep "Accepted" /var/log/auth.log        |

---

## Demo 2 : Find users who failed to login (brute-force indicators)

| Usages                                                 | Command    |
| ------------------------------------------------------ | ---------- |
| Check all failed login attmpts                         | faillog -a |
| show failed logins stored in /var/log/btmp (in binary) | lastb      |

---

## Demo 3 : See who logged into the system recently

| Usages                   | Command |
| ------------------------ | ------- |
| Last login for each user | lastlog |
| Complete login history   | last    |

---

## Demo 4 : Detect unauthorized privilege escalation attempts

| Usages                                               | Command                                |
| ---------------------------------------------------- | -------------------------------------- |
| Show sudo commands used with timestamp and user info | grep "sudo" /va/og/auth.log            |
| View your own sudo history                           | sudo cat ~/.bash<>history or grep sudo |

---

## Demo 5 : Check what services start during boot

| Usages                          | Command               |
| ------------------------------- | --------------------- |
| Show boot logs                  | cat /var/log/boot.log |
| Analyze system boot performance | systemd-analyze blame |

---

## Demo 6 : Detect malicious scheduled tasks (Persistence technique)

| Usages                          | Command                          |
| ------------------------------- | -------------------------------- |
| View cron execution logs        | cat /var/log/syslog or grep CRON |
| View current cron jobs fro root | sudo crontab -I                  |
