#!/bin/bash

#ログ
exec 1> >(tee -a nginx.log)
exec 2> >(tee -a nginxerr.log >&2)

#オレオレ証明書
oreorekey="/usr/local/ssl/certs/mastodon.pem" #作るkeyの場所
oreorekeyDH="/usr/local/ssl/certs/mastodondh.pem" #作るcsrの場所
oreorecrt="/usr/local/ssl/certs/mastodon.crt" #作るcrtの場所
mkdir -p /usr/local/ssl/certs
#オレオレ証明書作成
expect -c "
set timeout 20
spawn openssl req -days 3650 -new -nodes -newkey rsa:2048 -x509 -keyout ${oreorekey} -out ${oreorekey}
expect \"Country Name\"
send \"\n\"
expect \"State or Province Name\"
send \"\n\"
expect \"Locality Name\"
send \"\n\"
expect \"Organization Name\"
send \"\n\"
expect \"Organizational Unit Name\"
send \"\n\"
expect \"Common Name\"
send \"\n\"
expect \"Email Address\"
send \"\n\"
expect \"Please enter the following\"
send \"\n\"
expect \"A challenge\"
send \"\n\"
expect \"An optional company\"
send \"\n\"
interact
"

openssl dhparam -out ${oreorekeyDH} 2048
