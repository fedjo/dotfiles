#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
#

alias tree="pwd; tree"
alias uuid="python -c 'import sys,uuid; sys.stdout.write(str(uuid.uuid4()))' | pbcopy && pbpaste && echo"
# alias ipy="python3 -c 'import IPython; IPython.terminal.ipapp.launch_new_instance()'"

# virtualenv and virtualenvwrapper
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.7
export WORKON_HOME=$HOME/.venvs
source /usr/local/bin/virtualenvwrapper.sh

export PATH=$HOME/bin:$PATH

# less with color
export LESS='-R'
export LESSOPEN='|~/bin/lessfilter %s'


# OPAM configuration
. $HOME/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
if [ /usr/bin/kubectl ]; then source <(kubectl completion zsh); fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
