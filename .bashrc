
# Get git infos
source ~/.git-prompt.sh

# Prompt
LOCATION=$(pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g")
PS1='\[\e[38;5;123m\]$(__git_ps1 "(%s) ")\[\e[0m\]\[\e[38;5;165m\]\h \[\e[38;5;69m\]$(pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g") \[\e[0m\]\$ '

# Load pyenv automatically by appending
# the following to 
# ~/.bash_profile if it exists, otherwise ~/.profile (for login shells)
# and ~/.bashrc (for interactive shells) :

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Restart your shell for the changes to take effect.

# Load pyenv-virtualenv automatically by adding
# the following to ~/.bashrc:

eval "$(pyenv virtualenv-init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Safty
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"

# Programs
alias math="~/Mathematica/11.1/Executables/math"
alias Math="~/Mathematica/11.1/Executables/Mathematica"
alias vsc="/bin/code-insiders"
alias chimera="/home/noel/.local/UCSF-Chimera64-1.17.3/bin/chimera"

# Custom
alias bashrc="vsc ~/.bashrc"

# Projects
alias b='cd ~/projects/backmapping'
alias bcode="vsc ~/remote/projects/backmapping"
