#!/bin/bash

$OPTION
# dynamic text for the install menu.
BASIC_UTILITIES_STRING="Install basic utilities"
SSH_KEYS_STRING="Setup ssh keys for github" 
NVIM_STRING="Install Neovim"
ZSH_STRING="Install zsh"
ALACRITTY_STRING="Install alacritty"
FIREFOX_STRING="Install firefox"

# Check if public key exists.
FILE=~/.ssh/id_ed25519.pub

# Check if basic utilities are installed.
BASIC_UTILITIES=false

IS_UBUNTU=true
if [[ $(uname -a | grep Ubuntu ) ]]
then
  IS_UBUNTU=true
else
  IS_UBUNTU=false
fi

# 1)
install_basic_utilities() {
  if [[ $IS_UBUNTU = true ]]; then
  	sudo apt install -y git curl ripgrep cmake ninja-build gettext libtool libtool-bin autoconf automake g++ pkg-config unzip doxygen pip npm ripgrep
  else
   sudo dnf upgrade
    echo '------------------ essential libraries ------------------------------'
    sudo dnf install -y git curl ripgrep pip npm unzip g++
  fi

  BASIC_UTILITIES=true
  BASIC_UTILITIES_STRING="Install basic utilities [done]"
}

# 2)
generate_ssh_keys() {
	echo "------------ Generating ssh keys for github ssh ---------------"
	if [[ -f  "$FILE" ]]
	then
		echo "Key already exists, please add the key to your github account"
	else
		echo "please enter the mail address used for github: "
		read mail_address
		ssh-keygen -t ed25519 -C "$mail_address"
		eval "$(ssh-agent -s)"
		ssh-add ~/.ssh/id_ed25519
		echo "Key generated, please add the key to your github account"
	fi

  SSH_KEYS_STRING="Setup ssh keys for github [done]"   
}

# 3)
install_nvim() {
	echo "---------------------- Installing nvim ---------------------------"
  if [[ $IS_UBUNTU = false ]]
  then
    sudo dnf install -y neovim python3-neovim
  	cp -r ./dotfiles/.config/nvim $HOME/.config
  else
	  sudo apt install -y git curl cmake ninja-build gettext libtool libtool-bin autoconf automake g++ pkg-config unzip doxygen pip npm ripgrep
    cd $HOME
	  git clone https://github.com/neovim/neovim.git
	  cd neovim
	  make
	  sudo make install
  fi
  
  NVIM_STRING="Install Neovim [done]"
}

# 4)
install_zsh() {
	echo "------------------------- Installing Zshell ----------------------"
  if [[ $IS_UBUNTU = false ]]
  then
    sudo dnf install -y zsh
    sudo usermod -s /usr/bin/zsh $USER
  else
	  sudo apt install -y zsh
    chsh -s $(which zsh)
  fi
  
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  ZSH_STRING="Install zsh [done]"
}

# 5)
install_alacritty() {
	echo "---------------------- Installing Alacritty ----------------------" 
  if [[ $IS_UBUNTU = true ]]
  then
    sudo apt install -y rustc cargo cmake pkg-config libfreetype6-dev libfontconfig1-dev libxcb-xfixes0-dev libxkbcommon-dev python3
  else
    sudo dnf install -y alacritty
    mkdir $HOME/.config/Alacritty
    cp `pwd`/alacritty.yml $HOME/.config/alacritty/
  fi
}

configure_ubuntu() {
	echo "-------------------- Removing the dock --------------------------"
	gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
	gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
	gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false

  # don't allow for automatic updates
  gsettings set org.gnome.software allow-updates false
	gsettings set org.gnome.software download-updates false
	gsettings set org.gnome.software download-updates-notify false
	
	echo "-------------------- Removing trash icon --------------------------"
	gsettings set org.gnome.shell.extensions.desktop-icons show-trash false

  echo "--------------------- Configuring snap ---------------------------------"
  sudo snap remove snap-list
  sudo snap install slack
}

install_firefox() {
  echo "--------------------- Installing firefox -----------------------------"
  curl -Lo https://www.mozilla.org/en-US/firefox/download/thanks/
  tar -xvf firefox*.tar.bz2
  mv firefox /usr/local/src/
  sudo ln -sf /usr/local/src/firefox/firefox /usr/local/bin/firefox

  FIREFOX_STRING="Install firefox [done]"
}

install_menu() {
  echo -ne "
    1) $BASIC_UTILITIES_STRING
    2) $SSH_KEYS_STRING
    3) $NVIM_STRING
    4) $ZSH_STRING
    5) $ALACRITTY_STRING
    6) $FIREFOX_STRING
    0) Exit
    Choose an option:  "
    read -r option
    case $option in
    1)
        install_basic_utilities
        install_menu
        ;;
    2)
        generate_ssh_keys
        install_menu
        ;;
    3)
        install_nvim
        install_menu
        ;;
    4)
        install_zsh
        install_menu
        ;;
    5)
        install_alacritty
        install_menu
        ;;
    6)
       install_firefox
       install_menu
       ;;
    0)
        exit 0
        ;;
    *)
        echo "Please select one of the above options."
        install_menu
        ;;
    esac
}

install_menu

