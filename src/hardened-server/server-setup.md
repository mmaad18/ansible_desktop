## Setup Hardened Server

**1) Upgrade all packages**

    sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y && sudo apt autoclean -y

**2) Add ssh public key to `.ssh/authorized_keys`**

**3) Install Crowdsec**

    curl -s https://packagecloud.io/install/repositories/crowdsec/crowdsec/script.deb.sh | sudo bash
    sudo apt-get install crowdsec
    sudo cscli console enroll {instance id}

**4) Install Firewall Bouncer**

    sudo apt install crowdsec-firewall-bouncer-iptables

**Access Crowdsec CLI**

`cscli`

**5) - Install Google-Authenticator PAM Module**

    sudo apt install libpam-google-authenticator -y
    google-authenticator

**Time-based authentication tokens?** `Yes`

**Update `/home/{username}/.google_authenticator`?** `Yes`

**Disallow multiple uses of the same authentication token?** `Yes`

**Increase the window from 3 permitted codes to 17 permitted codes?** `No`

**Enable rate-limiting?** `Yes`

**6) PAM Configuration**

    sudo cp /etc/pam.d/sshd /etc/pam.d/sshd.bak
    sudo vim /etc/pam.d/sshd

**Comment out the `@include common-auth` line.**

**Add two following lines**

    auth required pam_google_authenticator.so
    auth required pam_permit.so

**Edit sshd_config**

    sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak
    sudo vim /etc/ssh/sshd_config

**Change `ChallengeResponseAuthentication` to `yes`**

**Add two following lines**

    AuthenticationMethods publickey,keyboard-interactive
    PasswordAuthentication no

**7) Restart SSH Server**

    sudo service ssh restart
    sudo systemctl restart sshd.service

**8) Check SSH Server Status**

    systemctl status ssh.service
    systemctl status sshd.service

**Transfer Resources**

    scp -i <ssh-private-key> -r <directory to transfer> <username>@<IP/FQDN>:<path>

