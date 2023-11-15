#!/bin/bash

RED="\e[31m"
GREEN="\e[32m"
END="\e[0m"
clear
echo -e "${RED}_______________________________________________________________________________________"
echo ""
echo "oooooo   oooooo     oooo            .o8             o8o               .o88o.           "
echo " \`888.    \`888.     .8'            \"888             \`\"'               888 \`\"           "
echo "  \`888.   .8888.   .8'    .ooooo.   888oooo.       oooo  ooo. .oo.   o888oo   .ooooo.  "
echo "   \`888  .8'\`888. .8'    d88' \`88b  d88' \`88b      \`888  \`888P\"Y88b   888    d88' \`88b "
echo "    \`888.8'  \`888.8'     888ooo888  888   888       888   888   888   888    888   888 "
echo "     \`888'    \`888'      888    .o  888   888       888   888   888   888    888   888 "
echo "      \`8'      \`8'       \`Y8bod8P'  \`Y8bod8P'      o888o o888o o888o o888o   \`Y8bod8P' "
echo ""
echo "created by Anon404"
echo "_______________________________________________________________________________________"
echo -e "${GREEN}"
read -p "[+] Enter a domain : " dom
echo ""
echo "####################### Informations ##########################"
echo "[+] Domain name         : $dom"
echo "[+] IPv4 address        : $(host $dom | grep address | awk 'NR == 1''{print $4}')"
a1=$(host $dom | grep IPv6 | awk 'NR == 1''{print $5}')
echo "[+] IPv6 Address        : $a1"
a2=$(whois $dom | grep 'Registry Domain ID:' | awk 'NR == 1''{print $4}')
echo "[+] Registry Domain ID  : $a2"
a3=$(whois $dom | grep 'Registrar WHOIS Server:' | awk 'NR == 1''{print $4}')
echo "[+] Registrar WHOIS Server  : $a3"
a4=$(whois $dom | grep 'Registrar URL:' | awk 'NR == 1''{print $3}')
echo "[+] Registrar URL       : $a4"
a5=$(whois $dom | grep 'Updated Date:' | awk 'NR == 1''{print $3}')
echo "[+] Updated Date        : $a5"
a6=$(whois $dom | grep 'Creation Date:' | awk 'NR == 1''{print $3}')
echo "[+] Creation Date       : $a6"
a7=$(whois $dom | grep 'Registrar Registration Expiration Date:' | awk 'NR == 1''{print $5}')
echo "[+] Registry Expiry     : $a7"
a8=$(whois $dom | grep 'Registrar:' | awk 'NR == 1''{print $2","$3}')
echo "[+] Registrar           : $a8"
a9=$(whois $dom | grep 'Registrar IANA ID:' | awk 'NR == 1''{print $4}')
echo "[+] Registrar IANA ID   : $a9"
b1=$(whois $dom | grep 'Registrar Abuse Contact Email:' | awk 'NR == 1''{print $5}')
echo "[+] Registrar Abuse Contact Email  : $b1"
b2=$(whois $dom | grep 'Registrar Abuse Contact Phone:' | awk 'NR == 1''{print $5}')
echo "[+] Registrar Abuse Contact Phone  : $b2"
b3=$(whois $dom | grep 'Domain Status:' | awk 'NR == 1''{print $4}')
echo "[+] Domain Status       : $b3"
echo ""
echo "####################### Registrant Info #######################"
b4=$(whois $dom | grep 'Registry Registrant ID' | awk 'NR == 1''{print " "" " $4 " " $5 " " $6}')
echo "[+] Registry Registrant ID  : $b4"
b5=$(whois $dom | grep 'Registrant Name:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Registrant Name     : $b5"
b6=$(whois $dom | grep 'Registrant Organization:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Registrant Organization : $b6"
b7=$(whois $dom | grep 'Registrant State/Province:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Registrant Street   : $b7"
b8=$(whois $dom | grep 'Registrant City:' | awk 'NR == 1''{print $3 " "" " $4 " " $5 " " $6}')
echo "[+] Registrant City     : $b8"
b9=$(whois $dom | grep 'Registrant State/Province:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Registrant State/Province : $b9"
c1=$(whois $dom | grep 'Registrant Postal Code' | awk 'NR == 1''{print $4 " " $5 " " $6}')
echo "[+] Registrant Postal Code : $c1"
c2=$(whois $dom | grep 'Registrant Country:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Registrant Country  : $c2"
c3=$(whois $dom | grep 'Registrant Phone:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Registrant Phone    : $c3"
c4=$(whois $dom | grep 'Registrant Phone Ext:' | awk 'NR == 1''{print $4 " " $5 " " $6}')
echo "[+] Registrant Phone Ext : $c4"
c5=$(whois $dom | grep 'Registrant Fax:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Registrant Fax      : $c5"
c6=$(whois $dom | grep 'Registrant Fax Ext:' | awk 'NR == 1''{print $4 " " $5 " " $6}')
echo "[+] Registrant Fax Ext  : $c6"
c7=$(whois $dom | grep 'Registrant Email:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Registrant Email    : $c7"
echo ""
echo "####################### Admin Info ############################"
c8=$(whois $dom | grep 'Registry Admin ID:' | awk 'NR == 1''{print $4 " " $5 " " $6}')
echo "[+] Registry Admin ID   : $c8"
c9=$(whois $dom | grep 'Admin Name:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Admin Name          : $c9"
d1=$(whois $dom | grep 'Admin Organization:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Admin Organization  : $d1"
d2=$(whois $dom | grep 'Admin Street:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Admin Street        : $d2"
d3=$(whois $dom | grep 'Admin City:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Admin City          : $d3"
d4=$(whois $dom | grep 'Admin State/Province:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Admin State/Province : $d4"
d5=$(whois $dom | grep 'Admin Postal Code:' | awk 'NR == 1''{print $4 " " $5 " " $6}')
echo "[+] Admin Postal Code   : $d5"
d6=$(whois $dom | grep 'Admin Country:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Admin Country       : $d6"
d7=$(whois $dom | grep 'Admin Phone:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Admin Phone         : $d7"
d8=$(whois $dom | grep 'Admin Phone Ext:' | awk 'NR == 1''{print $4 " " $5 " " $6}')
echo "[+] Admin Phone Ext     : $d8"
d9=$(whois $dom | grep 'Admin Fax:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Admin Fax           : $d9"
e1=$(whois $dom | grep 'Admin Fax Ext:' | awk 'NR == 1''{print $4 " " $5 " " $6}')
echo "[+] Admin Fax Ext       : $e1"
e2=$(whois $dom | grep 'Admin Email:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Admin Email         : $e2"
echo ""
echo "####################### Tech Info #############################"
e3=$(whois $dom | grep 'Registry Tech ID:' | awk 'NR == 1''{print " "" " $4 " " $5 " " $6}')
echo "[+] Registry Tech ID    : $e3"
e4=$(whois $dom | grep 'Tech Name:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Tech Name           : $e4"
e5=$(whois $dom | grep 'Tech Organization:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Tech Organization   : $e5"
e6=$(whois $dom | grep 'Tech Street:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Tech Street         : $e6"
e7=$(whois $dom | grep 'Tech City:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Tech City           : $e7"
e8=$(whois $dom | grep 'Tech State/Province:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Tech State/Province : $e8"
e9=$(whois $dom | grep 'Tech Postal Code:' | awk 'NR == 1''{print $4 " " $5 " " $6}')
echo "[+] Tech Postal Code    : $e9"
f1=$(whois $dom | grep 'Tech Country:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Tech Country        : $f1"
f2=$(whois $dom | grep 'Tech Phone:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Tech Phone          : $f2"
f3=$(whois $dom | grep 'Tech Phone Ext:' | awk 'NR == 1''{print $4 " " $5 " " $6}')
echo "[+] Tech Phone Ext      : $f3"
f4=$(whois $dom | grep 'Tech Fax:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Tech Fax            : $f4"
f5=$(whois $dom | grep 'Tech Fax Ext:' | awk 'NR == 1''{print $4 " " $5 " " $6}')
echo "[+] Tech Fax Ext        : $f5"
f6=$(whois $dom | grep 'Tech Email:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Tech Email          : $f6"
f7=$(whois $dom | grep 'Name Server:' | awk 'NR == 1''{print $3 " " $4 " " $5}')
echo "[+] Name Server         : $f7"
f8=$(whois $dom | grep 'DNSSEC:' | awk 'NR == 1''{print $2 " " $3 " " $4}')
echo "[+] DNSSEC              : $f8"
f9=$(whois $dom | grep 'Registrar Abuse Contact Email:' | awk 'NR == 1''{print $5 " " $6 " " $7}')
echo "[+] Registrar Abuse Contact Email : $f9"
g1=$(whois $dom | grep 'Registrar Abuse Contact Phone:' | awk 'NR == 1''{print $5 " " $6 " " $7}')
echo "[+] Registrar Abuse Contact Phone : $g1"
g2=$(whois $dom | grep 'URL of the ICANN WHOIS Data Problem Reporting System:' | awk 'NR == 1''{print $10 " " $11 " " $12}')
echo "[+] URL of the ICANN WHOIS Data Problem Reporting System : $g2"
echo ""
echo "Thnaks to Anon404"
