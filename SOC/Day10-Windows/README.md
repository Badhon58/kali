# Windows OS Architecture

- **_User Mode vs kernel Mode_**
  - _User Mode_ : Where all user application run e.g. - browser, text editors
  - _kernel Mode_ : Has unrestricted access to system memory and hardware. Responsible for system calls, memory management, process scheduling

- **Key Components:**
  - _Hardware Abstraction Layer (HAL)_ : Bridges OS and hardware.
  - _NTOSKRNL.exe(Windows Kernel)_ : Manages core OS operations.
  - _System Services & Drivers_ : Run in kernel mode to communicate with devices.
  - _Win32 Subsystem_ : Manages GUI and console application.

- **Essential Processes**:
  - _System_: kernel process that manages hardware.
  - _wininit.exe_: initializes services after boot
  - _csrss.exe_ : client-server runtime, essential for windows sessions.
  - _svchost.exe_ : Generic host process for running services.

- **Important Windows Directories & Files**
  - _c:\Winodows\System32_
    - Container OS-level executables and libraries (e.g. cmd.exe, taskmgr.exe)
    - Heavily targeted by malware of DDl injection and persistence
  - _C:\Users\:_
    - Each user has a folder: Desktop, Documents, Downloads.
    - Malware often drops payloads here due to write permissions.
