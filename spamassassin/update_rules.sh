#!/bin/bash
rm -f /etc/mail/spamassassin/local.cf
wget https://raw.githubusercontent.com/mxroute/da_server_updates/master/spamassassin/local.cf -P /etc/mail/spamassassin
systemctl restart spamd
rm -f /etc/susranges
wget https://raw.githubusercontent.com/mxroute/da_server_updates/refs/heads/master/exim/susranges -P /etc
