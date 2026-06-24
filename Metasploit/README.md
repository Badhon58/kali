# MetaSploit

- Metasploit is a toolkit for penetration testing. it collects reusable pieces of offensive work. Code that exploits vulnerabilities payloads that run on a target, components that listen for connections from those payloads, and helper modules that scan, enumerate and perform post-exploitation tasks. It is a framework that brings these pieces together so testers do not have to write everything from scratch

## Core Concepts

- _Modules_ : Separate components that perform one job, such as exploitiong a vulnerability, scanning a service, or performing post-exploitation.

- _Payloads_ : The code that runs on a target after an exploit succeed. Payloads can be simple shells or advanced interactive agents.

- _Meterpreter_ : A Common interactive payload that provides many built-in capabilities for file access, Running commands, and gathering information.

- _Handles or Listener_ : A Component that waits for a payload to connect back to the tester so the session can be controlled.

- _Database and Workspace_ : Storage that lets testers keep scan results, notes, and session data organized and repeatable.

---

- _To Enter the Metasploit_

```bash
    $ msfconsole
```

## Metasploit Modules

- A module is a piece of software that the metasploit framework uses to perform a task. such as exploiting or scanning a target.
  - _Exploits, Auxiliary, payloads, Encoders, Nops, Evasion, Post_

- **Exploits** : An exploit executes a sequence of commands that target a specific vulnerability found is a system.

- **Auxiliary** : Auxiliary modules include port scanners, fuzzers, sniffers, and more.

- **Payloads** : Payloads consist of code that runs remotely

- **Encoders** : Encoders ensure that payloads make it to their destination intact

- **Nops** : Nops keep the payload sizes consistent across exploit attempts

- **Evasion**: These new modules are designed to help you create payloads that can evade anti-virus (AV) on the target system

- **Post** : Post-exploitation modules that can be run on compromised targets to gather evidence, pivot deeper into a target network, and much more.

---

## msfconsole

- The msfconsole is the most popular interface to the Metasploit Framework (MSF)
- Execution of external commands in msfconsole is possible

```bash
$ service postgresql start # After that enter password
$ service postgresql status # Check the postgresql status
$ msfconsole # With banner
$ banner
$ msfconsole -q # WithOut Banner
$ help
```

- Command Line

```bash
$ show exploits # Show all the Exploits
$ show payloads # Show all the payloads

$ use <Exploits Name>
$ show payload
$ show options
$ set RHOSTS <IP>
$ info
$ show targets
$ show advanced
$ back

---
$ nmap <ip> -sV
$ search name:samba type:exploit platform:unix
$ use <Exploits Name>(exploit/multi/samba/usermap_script)
$ show options
$ set RHOSTS <ip>
$ show options
$ exploit # WOW
$ Ctrl + Z # Background Session
$ sessions -h # Help
$ sessions -l # List of Session
$ sessions -u 1  # Use the session that have running in background
$ sessions -k 1 # To Kill the Session

# Optional Alternatively, keep the existing handler and change your exploit's listener port:
$ set LPORT 4445
$ exploit
```

---

### Payload Types

- Single, Staged or Stages, Stages, MeterPreter, PassiveX, NoNX, Ord, IPv^

---

## New

- **Core Concepts**
  - _Modules_ : Separate components tha perform one job, such as exploiting a vulnerability, scanning a service, or performing post-exploitation.
  - _Payloads_ : The code that runs on a target after an exploit succeeds. payloads can be simple shells or advanced interactive agents.
  - _Meterpreter_: A common interactive payload that provides many built-in capabilities for file access, running commands, and gathering information.
  - _Handle or Listener_ : A component that waits for a payload to connect back to the tester so the session can be controlled.
  - _Database and workspace_ : Storage that lets testers keep scan results, notes, and session data organized and repeatable

```bash
  $ show exploits
  $ show payloads
  $ show post
  $ show encoders
```

## Difference between msfvenom and msfconsole

- **msfvenom** : A payload generator. It builds payload files or code snippets that will run on a target. Think of it as the payload production tool.
- **msfconsole** : The main framework interface and operational environment. It loads modules, manages exploits, and acts as the listener or handler that interacts with payloads when they connect back
- **Simple memory aid** : msfvenom produces the payload. msfconsole runs the framework and manages sessions
