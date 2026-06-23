- **What is Enumeration?. Why is Enumeration Important?**
  - Enumeration = Active information gathering
  - Extracts details data about a system
  - Usually follows the scanning phase
  - ..
  - Helps identify system weaknesses
  - Gathers info like : Usernames, Group names, Network resources, System banners
  - Used by both attackers and ethical hackers (pentesters)

- **What is NetBIOS?. How we Hack it**
  - NetBIOS (Network Basic Input/Output System) is a protocol that allows applications on different computers to communicate within a local area network (LAN). it's often used in windows-based environments to share files, printers and services

- **Example** :
  - Imagine your target is like a cool guy at a party (the network). NetBios is like asking everyone at the party, "Yo, what's his name? Where does you live?"

- **Practical Tool**:
  - Tools : "enum4linux"
  - This tool helps you to gather information from a linux box that's connected to a windows machine.
  - Command : enum4linux -a <target-ip>

- NMAP, MetaSploit, Burp Suite, OSINT, Reverse Engineering, Malware
