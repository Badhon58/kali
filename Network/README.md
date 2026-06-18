# Scanning

Network scanning is a method of getting network information such as identification of hosts, port information, and services by scanning networks and ports

- **The main Objective of Network Scanning is** :
  - To identify live hosts on a network
  - To identify open & Closed ports
  - To identify operating system information
  - To identify services running on a network
  - To identify running processes on a network
  - To identify vulnerabilities

---

- **_TCP and UDP_**
  - _TCP - Transmission Control Protocol_ :
    - TCP is connection oriented - Once a connection is established, data can be sent bidirectional.
  - _UDP - User Datagram Protocol_ :
    - UDP is a simpler, connectionl ess Internet protocol. Multiple messages are sent as packets in chunks using UDP

- **TCP Flags**
  - _SYN_ initiates a connection between two hosts to facilitate communication.
  - _ACK_ Acknowledge the receipt of a packet
  - _URG_ Indicates that the data contained in the packet is urgent and should process immediately
  - _PSH_ Instructs the sending system to send all buffered data immediately
  - _FIN_ Tells the remote system about the end of the communication. In essence, this gracefully closes a connection.
  - _RST_ Reset a connection
