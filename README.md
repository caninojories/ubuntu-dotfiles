DIGITALOCEAN VPS UBUNTU SETUP

Thanks to pongstr: https://github.com/pongstr

```bash
#Download the unzip
apt-get install unzip
#curl the repository
curl -L -O https://github.com/caninojories/digitalOcean-Ubuntu-Dev/archive/master.zip
#unzip the digitalOcean master
unzip master.zip && mv digitalOcean-Ubuntu-Dev-master digitalOcean-Ubuntu-Dev
```

```bash
#Run the 1_shell.sh
sh 1_shell.sh
#Run the 2_.sh
sh 2_.sh
```

Lastly run the npm
. ./init/.npm
