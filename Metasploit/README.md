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
