SUDO=''
if [ -e "`which sudo`" ]; then
  SUDO="`which sudo`"
fi
#Editor stuff
$SUDO apt-get install -y vim

#Filter stuff
$SUDO apt-get install -y multitail grc

#Monitoring
$SUDO apt-get install -y glances htop iotop lm-sensors ipmitool pv

#Debug
$SUDO apt-get install -y nmap tcptraceroute tcpdump wireshark iperf speedtest-cli
