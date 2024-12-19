# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
export PS1='\u@\h:\w\$ '
export VISUAL=nvim
export EDITOR="$VISUAL"
alias sudo='f(){ if [ "$1" = "vim" ] || [ "$1" = "vi" ] || [ "$1" = "nvim" ]; then shift; sudoedit "$@"; else command sudo "$@"; fi }; f'
dump_image() {
    cliphist list | rofi -dmenu | cliphist decode
}
