## Nessus

```bash
$ curl --request GET \
    --url 'https://www.tenable.com/downloads/api/v2/pages/nessus/files/Nessus-10.12.4-ubuntu1604_amd64.deb' \
    --output 'Nessus-10.12.4-ubuntu1604_amd64.deb'

$ dpkg -i Nessus-10.12.4-ubuntu1604_amd64.deb

$ /bin/systemctl start nessusd.service
$ /bin/systemctl status nessusd.service

```

```bash
$ Email : legoyi3368@kolsea.com
$ Activation Code: abc-abc-abc--abc-abc-abc
$ https://127.0.0.1:8834/#/
```
sudo nmap -sV -p- --script=vulscan/vulscan.nse www.example.com