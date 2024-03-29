#!/bin/bash

# This script installs all the utilities 
# needed for a pleasant laptop environment.

$OPTION
# dynamic text for the install menu.
BASIC_UTILITIES_STRING="Install basic utilities"
SSH_KEYS_STRING="Setup ssh keys for github" 
NVIM_STRING="Install Neovim"
ZSH_STRING="Install zsh"
ALACRITTY_STRING="Install alacritty"
FIREFOX_STRING="Install firefox"
LATEX_STRING="Install latex"
TMUX_STRING="Install tmux"
WM_STRING="Configure windows manager"

# Check if public key exists.
FILE=~/.ssh/id_ed25519.pub


# 1)
install_basic_utilities() {
  sudo dnf upgrade
  echo '------------------ essential libraries ------------------------------'
  sudo dnf install -y git curl ripgrep pip npm unzip g++ dnf make automake gcc gcc-c++ kernel-devel pam-devel libxcb-devel

  echo '--- Installing ranger ----'
  sudo dnf install -y ranger

  BASIC_UTILITIES_STRING="Install basic utilities [done]"
}

configure_wm() {
  sudo dnf install -y i3-gaps
  sudo ln -sf `pwd`/desktop_environment/i3/config $HOME/.config/i3/

  sudo dnf install -y polybar
  sudo ln -sf `pwd`/desktop_environment/polybar/config.ini /etc/polybar/
  sudo ln -sf `pwd`/desktop_environment/polybar/launch.sh $HOME/.config/polybar/

  sudo dnf install -y rofi
  sudo ln -sf `pwd`/desktop_environment/rofi/config.rasi $HOME/.config/rofi/config.rasi

  sudo dnf install -y picom
  sudo ln -sf `pwd`/desktop_environment/picom/picom.conf $home/.config/picom.conf

  # Setup up login via tty
  sudo systemctl disable lightdm.service --force 
  touch $HOME/.xinitrc
  chmod +x $HOME/xinitrc
  echo "#!/bin/sh" >> $HOME/.xinitrc
  echo "exec i3" >> $HOME/.xinitrc
  # automatically start up i3 is in .zshrc file
  sudo dnf remove -y lightdm i3lock xss-lock

  WM_STRING="Configure windows manager [done]"
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
		echo "Key generated, please add the key to your github accoun.t"
	fi

  SSH_KEYS_STRING="Setup ssh keys for github [done]"   
}

# 3)
install_nvim() {
	echo "---------------------- Installing nvim ---------------------------"
  sudo dnf install -y neovim python3-neovim
  sudo ln -sf `pwd`/nvim $HOME/.config/nvim

  echo "creating coldbrewlatte nvim colorscheme"
  sudo ln -sf `pwd`/nvim/colors/coldbrewlatte.vim /usr/share/nvim/runtime/colors/
  # afterwards type :colorscheme coldbrewlatte

  NVIM_STRING="Install Neovim [done]"
}

# 4)
install_zsh() {
	echo "------------------------- Installing Zshell ----------------------"
  sudo dnf install -y zsh
  sudo usermod -s /usr/bin/zsh $USER
  
	sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
  
  sudo ln -sf `pwd`/zsh/.zshrc $HOME/.zshrc

  ZSH_STRING="Install zsh [done]"
}

# 5)
install_alacritty() {
	echo "---------------------- Installing Alacritty ----------------------" 
  sudo dnf install -y alacritty
  mkdir $HOME/.config/Alacritty
  sudo ln -sf `pwd`/allacritty/alacritty.yml $HOME/.config/alacritty/alacritty.yml
  sudo ln -sf `pwd`/alacritty/catppuccin.yml $HOME/.config/alacritty/catppuccin.yml
}

install_firefox() {
  echo "--------------------- Installing firefox -----------------------------"
  curl -Lo https://www.mozilla.org/en-US/firefox/download/thanks/
  tar -xvf firefox*.tar.bz2
  mv firefox /usr/local/src/
  sudo ln -sf /usr/local/src/firefox/firefox /usr/local/bin/firefox

  FIREFOX_STRING="Install firefox [done]"
}

install_latex() {
  echo "--------------------- Installing latex -----------------------------"
  sudo dnf install texlive-scheme-full
  sudo ln -sf `pwd`/latex/compile_latex /usr/local/bin/compile_latex
  sudo ln -sf `pwd`/latex/create_tex /usr/local/bin/create_tex

  LATEX_STRING="Install latex [done]"
}

install_tmux() {
  sudo dnf -y install tmux
  sudo ln -sf `pwd`/.tmux.conf $HOME/

  TMUX_STRING="Install tmux [done]"
}

install_basic_utilities

install_menu() {
  echo -ne "
    1) $WM_STRING
    2) $SSH_KEYS_STRING
    3) $NVIM_STRING
    4) $ZSH_STRING
    5) $ALACRITTY_STRING
    6) $FIREFOX_STRING
    7) $LATEX_STRING
    8) $TMUX_STRING
    0) Exit
    Choose an option:  "
    read -r option
    case $option in
    1)
        configure_wm
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
    7)
        install_latex
        install_menu
        ;;
    8)
      install_tmux
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
