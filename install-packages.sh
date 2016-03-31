SUDO=''
if [ -e "`which sudo`" ]; then
  SUDO="`which sudo`"
fi

$SUDO apt-get install -y vim
$SUDO apt-get install -y multitail
$SUDO apt-get install -y htop
$SUDO apt-get install -y astyle
