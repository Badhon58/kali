## Scanning Networks

### Types of Scanning (PORT, Network, Vulnerability)

- **What is Network Scanning**
  - Network scanning is the process of identifying active devices, open ports, services, and vulnerability on a network. it helps ethical hackers map the network and understand potential entry points for further testing or exploitation.

- **Why is it important?**
  - Helps in identifying that attack surface
  - Assists in security assessments and audits
  - Critical for penetration testing and defense strategies

- **Port Scanning**
  - Port scanning is used to discover open, closed, or filtered port on a target system. it also helps determine what services are running behind those ports.

- **Common Port Scan Goals**
  - Discover open ports (eg. 21-ftp, 22-ssh, 80-http)
  - Identify services running (eg. Apache, Mysql)
  - Detect firewall and filtering rules
  - Tools used : NMAP, NETCAT, MASSCAN

- **What is Network Scanning?**
  - Network scanning helps discover live devices (hosts) on a network and builds a map of the infrastructure. it's crucial before targeting individual systems.

- **Goals**:
  - Find active Ip's and devices : Nmap (nmap -sn)
  - Identify reachable systems : Angry IP Scanner
  - Gather basic netowrk info : ARP Scan

- **Vulnerability Scanning**
  - This lock is just for show, it opens with a slight push

- **Practical Tools:**
  - Nessus
  - OpenVAS
  - Basic Web tool
  - nikto -h http://target.com

- **ICMP = Knock Knock, Who's There**
  - ICMP = Internet ka doorbell
  - ping: Is the host alive?
  - traceroute = Which path did the packet take?
  - ICMP Type 8 = Echo Request
  - ICMP Type 0 = Echo Reply

- **Defensive Takeaways:**
  - Element - Hacker Trick - Defense Strategy
  - Ip - Spoofing, Recon - Use VPNs, Firewalls
  - Subnet - Scan smaller ranges - Split network, isolate Vlans
  - ICMP - Ping sweep - Disable ICMP Externally

-> nmap - fping - tcpdump - subnetcalc
