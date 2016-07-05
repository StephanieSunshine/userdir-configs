# Fix term bs, mainly for containers and vms
if [ -e /usr/share/terminfo/x/xterm-256color ] || [ -e /lib/terminfo/x/xterm-256color ]; then
  export TERM='xterm-256color'
else
  export TERM='xterm-color'
fi

export rvmsudo_secure_path=1

eval "`dircolors`"

alias ls='ls -alh --color=auto'
alias gem='rvmsudo gem'
alias cat="grc cat"
alias head="grc head"
alias tail="grc tail"
alias ping="grc ping"
alias dig="grc dig"
alias gcc="grc gcc"
alias mount="sudo grc mount"
alias ps="grc ps"
alias ifconfig="sudo grc ifconfig"
alias traceroute="sudo grc -c conf.traceroute tcptraceroute"
alias df="grc df"
alias netstat="grc netstat"

alias apt="sudo apt"
alias top="glances"
alias ssh="ssh -AX"
alias sshfs="sshfs -C -o reconnect,follow_symlinks,large_read,intr"
alias systemctl="sudo systemctl"

alias ports='grc netstat -64lpn | sort -t: -k2,2 -h'
alias netping='nmap -oG - -sP `ipi | cut -d" " -f6` | tr -s " " | grep Host | tr " " "\t" | grcat -c conf.traceroute'
alias du="find . -maxdepth 1 -exec du -sh '{}' \; | grc -c conf.ls sort -h"
alias drives='ls /dev | grep -E "[h|s|v]d[a-z]$" | xargs -n1 -I% sudo grc -c conf.ldap sdparm -i /dev/%'

function ipi {
        ip route | grep `ip route | grep default | cut -d" " -f5` | grep -v "169.254.0.0" | tr -d "\n" | tr -s " " | cut -d" " -f1,2,3,4,5,6,13,14
}
