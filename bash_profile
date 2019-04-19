#!/bin/bash

########################################################################
# Bash Interactive Shell Setup
########################################################################

# Import the Z or Bash shell agnostic environment config
source ~/.profile

# When running two bash windows, allow both to write to the history, not one stomping the other
shopt -s histappend

#PROMPT_COMMAND='history -a'

# Remove duplicates from bash history
export HISTCONTROL="ignoredups"
export HISTIGNORE="&:ls:[bf]g:exit"

# Keep multiline commands as one command in history
shopt -s cmdhist

# Load Brew's git bash prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  GIT_PROMPT_THEME=Solarized_UserHost
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

# Load Brew's bash completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

# Load Brew's git bash completion
# source /opt/boxen/homebrew/Cellar/git/1.9.1/etc/bash_completion.d/git-completion.bash
# source /opt/boxen/homebrew/Cellar/git/1.9.1/etc/bash_completion.d/git-prompt.sh
# PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
# GIT_PS1_SHOWDIRTYSTATE=true

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Load pyenv
if command -v pyenv 1>/dev/null 2>\&1
then
  eval "$(pyenv init -)"
fi
# Load pyenv-virtualenv
if which pyenv-virtualenv-init > /dev/null
then
  eval "$(pyenv virtualenv-init -)"
fi
