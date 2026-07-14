# Understanding MITRA ATT & CK Framework

1. **What is MITRE ATT&CK?**
   - ATT&CK = Adversarial Tactics, Techniques & Common Knowledge
   - A knowledge base of real -world adversary behavior
   - Created by MITRE Corporation
   - Widely used in SOC operations, threat hunting, and red teaming

2. **Why MITRE ATT&CK Matters for SOC?**
   - Helps understand attacker behavior
   - Maps alerts/logs to adversary techniques
   - Improves incident response & detection rules
   - Acts as a common language across Blue Team, Red Team, and Management

3. **ATT&CK vs Cyber Kill Chain**
   - Cyber Kill Chain -> Linear attack phases
   - MITRE ATT&CK -> Real-World techniques, non-linear, details
   - ATT&CK is more granular & practical for SOC operations

4. **ATT&CK Structure**
   - _Tactics_ : Adversary's technical goals (the "why")
     - ::Initial Access, Execution, Persistence, Privilege Escalation, Defense Evasion, Credential Access, Discovery, Lateral Movement, Collection, Command & Control, Ex-filtration, Impact::
   - _Techniques_ : How goals are achieved (the "how")
   - _Sub-Techniques_ : More specific methods
   - _Mitigations_ : Defenses
   - _Detections_ : How to spot the techniques.
