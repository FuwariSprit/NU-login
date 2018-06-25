#! /bin/bash

user=$(sed 's/^.*"\(.*\)".*$/\1/' NU-login/passwd | sed -n '1p')
pass=$(sed 's/^.*"\(.*\)".*$/\1/' NU-login/passwd | sed -n '2p')

curl -d name=$user -d pass=$pass http://10.255.255.254:8080/cgi-bin/adeflogin.cgi >> NU-login/NU-login.log

