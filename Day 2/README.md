# What is FootPrinting? Passive vs. Active

- Foot printing is the process of gathering information about a target system, network, or organization to identify potential vulnerabilities before launching an attack
- It's the first step in ethical hacking, where hackers collects as much data as possible
- _Passive_ = Information without contact (Google Search, Linkedin)
- _Active_ = Direct Interaction (PING, TraceRouting)

- **Google hacking/Google Dorks**
  - SITE:GOV.IN INTEXT:"PASSWORD"
  - FILETYPE:XLS INURL:"EMAIL"
  - INTITLE:"INDEX OF" "BACKUP"
  - INTITLE: "INDEX OF" NID CARD

---

## WHOIS lookup, Dns Records, Reverse DNS

- **whois lookup** :
  - Find domain owner, rigistrar, contact email, address, adn registration dates.
  - example tool : whois example.com

- **DNS (DOMAIN NAME SYSTEM)**
  - Converts Domain System
  - Converts Domain Names to ip Addresses
  - Example Tool: NSLOOKUP example.com or dig a example.com

- **REVERSE DNS**
  - Converts IP Back to Domain Name (PTR Record Lookup)
  - Tool : NSLOOKUP <IP>

---

- **OSINT FRAMEWORK**
  - Need to Learn

## Email Harvesting

- **What is it?**
  - Gathering email addresses from public sources to build a target list for phishing, spam, or further recon.
  - _Live Tool_: theHarvester :
    - theHarvester -d example.com -b google
    - _options_:
      - -d -> domain name
      - -b -> data source (google, bing, baidu, etc)

- **Metadata**
  - _exiftool image.jpeg_
