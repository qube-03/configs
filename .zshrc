#__________________________________________________________#
#                                                          #
#     ▄████████████▄   ██████   █    █   ████▙   █████     #
#     ██ ▄▄ ██ ▄▄ ██   █    █   █    █   █   █   █         #
#     ██ ██ ██ ██ ██   █    █   █    █   █▒▒▒█   █▒▒       #
#     ██ ██ ██ ██ ██   █   ▒█   █    █   █████▙  ███       #
#     ██ ██ ██ ██ ██   █   ███  █    █   █    █  █         #
#     ██▂▂▂▂██▂▂▂▂██   █▒▒▒▒█   █▒▒▒▒█   █▒▒▒▒█  █▒▒▒▒     #
#     ▀████████████▀   ██████   ██████   █████▛  █████     #
#                                                          #
#__________________________________________________________#

#_________________________________________________HISTORY
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history
export HISTCONTROL=ignoredups:erasedups



#_________________________________________________QOL
setopt autocd # cd without writing "cd"
bindkey '^H' backward-delete-word # Ctrl+Bspc deletes whole word
bindkey '^?' backward-delete-char # fix bspc bug thing idk
autoload -U compinit # Better TAB Menu
zstyle ':completion:*' menu select
zmodload zsh/complist
_comp_options+=(globdots)
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh # Autosuggestions
source /home/qube/.github/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null # Syntax Highlighting
zle-line-init() # fix the vi cursor bug
{ zle -K viins 
  echo -ne "\e[5 q" }
zle -N zle-line-init



#_________________________________________________Aliases
alias d='doas '

alias p='paru '
alias pr='paru -Rcns '
alias less="nvim -c 'set ft=man' "

alias s='source ~/.zshrc '
alias c='clear'
alias l='exa -la --color=always --icons --no-permissions --no-user -s type'
alias mkdir='mkdir -pv'
alias find='doas find / -iname '
alias keys='doas pacman -Sy artix-keyring archlinux-keyring chaotic-keyring'
alias b='bat --style numbers,header-filename,header-filesize,numbers --color=always '

alias gc='git clone '
alias gcm='git commit '
alias gp='git pull '
alias gps='git push '
alias gs='git status '
alias ga='git add '

alias srv='echo "/etc/runit/sv" && exa -la --color=always --icons --no-permissions --no-user -s type /etc/runit/sv'
alias srvr='echo "/run/runit/service" && exa -la --color=always --icons --no-permissions --no-user -s type /run/runit/service'
alias autostart='echo ~/.config/autostart && l ~/.config/autostart && hr && ~/.config/autostart && echo /etc/xdg/autostart && l /etc/xdg/autostart'

alias v='nvim'
alias du='duf'
alias fetch='fastfetch '
alias h='htop '
alias utf8test='curl https://www.w3.org/2001/06/utf-8-test/UTF-8-demo.html | less '
alias ani='ani-cli'



#_________________________________________________Exports
export LANG="en_US.UTF-8"
export PAGER="/bin/sh -c \"col -b | nvim -c 'set ft=man' -\""

export PATH=$PATH:~/.local/share/bin



#_________________________________________________Prompt
PS1='%F{#3f4b62}%B[%/]%b ⮞ %f'
PS2='%F{#465768}  %f '



#_________________________________________________pFetch
export PF_INFO="ascii title os kernel pkgs memory"
export PF_SEP=""
export PF_COLOR=1
export PF_COL1=4
export PF_COL2=9
export PF_COL3=1
export PF_ASCII="arch"



#_________________________________________________fff
f() {
    fff "$@"
    cd "$(cat "${XDG_CACHE_HOME:=${HOME}/.cache}/fff/.fff_d")" && exa -la --color=always --icons --no-permissions --no-user -s type
}
bindkey -s ^Z 'f\n'

export FFF_FILE_ICON=1
export FFF_CD_ON_EXIT=1
export FFF_HIDDEN=1
export FFF_TRASH=~/.local/share/Trash/
export FFF_LS_COLORS=0
export FFF_COL1=4 # Directory Color
export FFF_COL2=1 # Status Color
export FFF_COL3=3 # Selection Color
export FFF_COL4=4 # Cursor Color

export FFF_FAV1=~
export FFF_FAV2=~/.config/
export FFF_FAV3=~/.github/
export FFF_FAV4=~/.scripts/
export FFF_FAV5=/media/D/Downloads/
export FFF_FAV6=/media/D/Pictures/
export FFF_FAV7=/media/D/Other/
export FFF_FAV8=/media/D/Producin/
export FFF_FAV9=/
export FFF_KEY_PREVIOUS="["
export FFF_KEY_SHELL="z"



#_________________________________________________Autostart
pokemonshow
