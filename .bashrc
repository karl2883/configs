# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias wflist='nmcli d wifi list'
alias wfconnect='nmcli d wifi connect'
alias root='cd /'
alias home='cd ~'
alias b='cd ..'
alias fr='sudo reboot 0'
alias fs='sudo shutdown 0'
alias u='sudo pacman -Syu'
alias i='sudo pacman -S'
alias n='nautilus'
alias v='nvim'
alias sv='sudo -E -s nvim'
alias td='telegram-desktop'
alias build='./build.sh'
alias reload=". ~/.bashrc"
alias edi3='nvim ~/.config/i3/config'
alias edpb='sudo -E -s nvim /usr/share/doc/polybar/config'
alias edkitty='nvim ~/.config/kitty/kitty.conf'
alias edthis='nvim ~/.bashrc'
alias ednvim="nvim ~/.config/nvim/init.vim"
alias edccr="sudo -E -s nvim /bin/ccr"
alias edrofi="nvim ~/.config/rofi/config.rasi"
PS1='\[\033[1;35m\]\u\[\033[0m\] \[\033[1;36m\]\w\[\033[0;37m\]:\[\033[0m\] '


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
