#!/bin/bash
echo ""
echo "───────────────────────────────────────"
echo ""
echo "         Welcome To RefewNet"
echo ""
echo "───────────────────────────────────────"		
echo ""
echo ""	
echo ""
echo "" 
echo "[+] Port Scanner [+]"
echo "Have you install nmap?"
echo "1) Yes"
echo "2) No"
echo "If you type 2,there will be an automatic download"
echo "WARNING ~ THIS TOOL WAS TESTED ON MACOS AND LINUX"
echo "[+] Port Scanner [+]"
read start
case $start in
1)
	clear
	echo ""
	echo "Insert just the ip of server to scan"
	echo ""
	read server
	case $server in
	*)
		echo "Insert just the first-port to scan" 
		read startp
		case $startp in
		*)
			echo "Insert just the end-port to scan"
			read endp
			case $endp in
			*)
				clear
				nmap -p $startp-$endp -T4 -A -v $server
						esac ;;
								esac ;;
										esac ;;
2)
	clear
	echo "If you don't have 'wget' , the download not there will  start"
	wget https://nmap.org/dist/nmap-7.00.tar.bz2
	bzip2 -cd nmap-7.00.tar.bz2 | tar xvf -
	cd nmap-7.00
	./configure
	make
	sudo make install
	echo "Installed of nmap finished" 
	clear
	echo ""
	echo "Insert just the ip of server to scan"
	echo ""
	read server
	case $server in
	*)
		echo "Insert just the first-port to scan" 
		read startp
		case $startp in
		*)
			echo "Insert just the end-port to scan"
			read endp
			case $endp in
			*)
				clear
				nmap -p $startp-$endp -T4 -A -v $server
						esac ;;
								esac ;;
										esac ;;
*)
	clear
	echo "[+] Port Scanner [+]"
	echo ""
	echo "SSH Tool Exit"
	echo "Good bye ツ"
	echo ""
	echo "[+] Port Scanner [+]" ;;
esac 