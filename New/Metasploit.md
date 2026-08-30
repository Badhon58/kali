## Metasploit

_Exploit_ : An exploit is the mechanism used to attack a system in a particular way that it was never intended to do .
_Payload_ : A payload is code that is delivered and executed using a framework, on a target machine or device.
_Modules_ : Modules within Metasploit are software components that perform chosen attacks on specified targets.
_Listener_ : A listener within Metasploit waits for incoming connections from targets that have been exploited

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
