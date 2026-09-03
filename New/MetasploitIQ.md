1. _What are the main components of Metasploit?_
   - Exploits : Code that takes advantages of vulnerabilities
   - Payloads : Code that runs after successful Exploitation.
   - Encoders : Obfuscate payloads to evade detection
   - Auxiliary Modules : Perform scanning, fuzzing, sniffing etc.
   - Post Modules : Used for actions after gaining access.

2. _What is msfconsole ?_
   - msfconsole is the main cli interface for Metasploit. It allows users to interact with the framework, load modules, set parameters, and run exploits.

3. _What is a payload in Metesploit?_
   - A payload is the port of the exploit that performs the intended action on the target system, such as Opening a reverse shell or creating a Meterpreter session

4. _What is the different between bind shell and reverse shell?_
   - _Bind Shell_ : Target system listens for a connection.
   - _Reverse Shell_ : Target system connects back to the attacker. Useful what the target is behind NAT/Firewall

5. _What is Meterpreter ?_
   - MeterPreter is an advanced payload in metasploit that runs in memory, provides an interactive shell,, and supports features like file browsing, keylogging, webcam control, and privilege escalation.

6. _What is the purpose of the exploit/multi/handler module ?_
   - This module listens for connections from payloads (Like reverse shells) and handle them, Typically used with custom-generated payloads.

7. _What is the Veil Framework and how does it related to metasploit ?_
   - Veil is a tool to generate Metasploit-compatible payload that can bypass antivirus detection using encryption and obfuscation.

8. _What is post-exploitation in Metasploit?_
   - Post Exploitation refers to activities performed after gaining access, Like extracting credentials, privilege escalation, gathering information, etc.

9. _How can you use MSF for client-side attacks?_
   - By crafting payloads and delivering them through social engineering.

10. _Can Metasploitbe used for Phishing ?_
    - Yes, Metasploit has auxiliary modules and can integrate with BeEf to perform and browser-based attacks

11. _What is the significance of set RHOST and set LHOST in Metasploit?_
    - RHOST : The Remote Host (Target Machine)
    - LHOST : The Local host (Attacker machine) that listens for a reverse connection from the target

12. _Explain the different between staged and non-staged payloads._
    - _Staged_ payloads send the initial payload which then download and executes a large payload. Smaller initial payload, Downloads seconds-stage shell.
    - _Non staged_ payload contain all code one file, no further connection needed after delivery. Entire payloads is sent at once; large but avoids seconds connection step.

13. _What is Metasploit?_
    - Metasploit is an open source penetration testing framework used by security professionals to find exploits, and validate vulnerabilities in systems. it supports tasks like Exploit developments, payload generation, Post-exploitation, and more.
