#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

git_branch="`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`"

# To understand this, there is some helpful information to be found if you run info bash
function color_my_prompt {
  local __user_and_host="\[\033[01;32m\]\u@\h"
  local __cur_location="\[\033[01;34m\]\w"
  local __git_branch_color="\[\033[31m\]"
  #local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
  local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
  local __prompt_tail="\[\033[35m\]$"
  local __last_color="\[\033[00m\]"
  export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt

#PS1='[\u@\h $git_branch \W]\$ '
export EDITOR='/usr/bin/vim'
export COMPOSE_PROFILES='development'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
