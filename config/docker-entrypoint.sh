#!/bin/bash

# Set up .htpasswd
cd /etc/apache2/
echo 'infinum:$apr1$u.laun1w$x6Xi6QmYlpPPR36XTRnmh/' > .htpasswd

rm -f /run/apache2/apache2.pid
rm -f /var/run/apache2/apache2.pid

exec apache2 -DFOREGROUND "$@"
