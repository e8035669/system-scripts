#!/bin/bash

read -p "Username: " username
read -s -p "Password: " password
echo ""

curl -s -d "username=${username}&userpwd=${password}" 'http://192.168.250.254/cgi-bin/ace_web_auth.cgi?web_jumpto=&orig_referer=http://1.1.1.1/' | grep 'login_online_detail' > /dev/null
ret=$?

if [[ $ret == 0 ]];then

    curl -s 'http://192.168.250.254/login_online_detail.php' | grep "登入成功" | cut -d'>' -f 3 | cut -d'<' -f 1
    echo 'OK'
else
    echo 'Maybe there are error'
fi


