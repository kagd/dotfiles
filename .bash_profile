# Add `~/bin` to the `$PATH`
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/bin:$PATH:/usr/local/sbin"
# export PATH="$HOME/.rbenv/bin:$PATH" # removed since switching to RVM

# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,bash_prompt,aliases,exports,functions,extra}; do
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

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add `killall` tab completion for common apps
complete -o "nospace" -W "Contacts Calendar Dock Finder Mail Safari iTunes SystemUIServer Terminal Twitter" killall

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion[[ -s /Users/gklinsing/.nvm/nvm.sh ]] && . /Users/gklinsing/.nvm/nvm.sh # This loads NVM

# add Node Version Manager to bash
# . ~/.nvm/nvm.sh

# setup postgres paths
export PGHOST=localhost
PATH="/Applications/Postgres.app/Contents/Versions/9.5/bin:$PATH"

# rbenv - https://github.com/sstephenson/rbenv
# eval "$(rbenv init -)" # removed since switching to RVM

# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
# Load RVM into a shell session *as a function*
if [[ -s "$HOME/.rvm/scripts/rvm" ]] ; then

	# First try to load from a user install
	source "$HOME/.rvm/scripts/rvm"

elif [[ -s "/usr/local/rvm/scripts/rvm" ]] ; then

	# Then try to load from a root install
	source "/usr/local/rvm/scripts/rvm"

else

	printf "ERROR: An RVM installation was not found.\n"

fi
