for file in ~/.{bash_prompt,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion[[ -s /Users/gklinsing/.nvm/nvm.sh ]] && . /Users/gklinsing/.nvm/nvm.sh # This loads NVM

# add Node Version Manager to bash
export NVM_DIR="$HOME/.nvm"
. "$(brew --prefix nvm)/nvm.sh"

# setup postgres paths
export PGHOST=localhost
PATH="/Applications/Postgres.app/Contents/Versions/9.5/bin:$PATH"

# Add tab completion to git
source ~/init/git-completion.bash

# set the default git editor
export GIT_EDITOR=nano
