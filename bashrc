# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

#VARIABLES
BOLD_TEXT="\[$(tput bold)\]"
DEFAULT_TEXT="\[$(tput sgr0)\]"

BLACK_TEXT="\[$(tput setaf 0)\]"
RED_TEXT="\[$(tput setaf 1)\]"
GREEN_TEXT="\[$(tput setaf 2)\]"
YELLOW_TEXT="\[$(tput setaf 3)\]"
BLUE_TEXT="\[$(tput setaf 4)\]"
MAGENTA_TEXT="\[$(tput setaf 5)\]"
CYAN_TEXT="\[$(tput setaf 6)\]"
WHITE_TEXT="\[$(tput setaf 7)\]"

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=
export PS1="${BOLD_TEXT}${CYAN_TEXT}\u${BLACK_TEXT}@${RED_TEXT}\h:${DEFAULT_TEXT}${YELLOW_TEXT}\w $ ${DEFAULT_TEXT}\n"

# User specific aliases and functions
alias yumcheck='cat sos_commands/rpm/package-data | grep -v "Red Hat, Inc\." | sort | cut -f1'
alias secureftp='ssh jaykim@attsecuretools.rdu2.cee.redhat.com'
