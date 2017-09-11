export PATH=$HOME/bin:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin

# include RBENV in the path
export PATH="$HOME/.rbenv/bin:$PATH"

# turn on bash completion
if [ -f `brew --prefix`/etc/bash_completion ]; then
  . `brew --prefix`/etc/bash_completion
fi

# Use atom for opening gems
export GEM_OPEN_EDITOR=atom
export BUNDLER_EDITOR=atom

# Use atom for other edits as well
export EDITOR='atom -n -w'

# Puts npm libraries in the node path
export NODE_PATH=/usr/local/lib/node:/usr/local/lib/node_modules

# This turns on colored output for `ls`
export CLICOLOR=true

# This loads aliases
[[ -s "$HOME/.aliases" ]] && . "$HOME/.aliases"

function red_text {
  local LIGHT_RED="\[\033[1;31m\]"
  local NO_COLOR="\[\033[0m\]"
  echo "$LIGHT_RED$1$NO_COLOR"
}

function green_text {
  local LIGHT_GREEN="\[\033[1;32m\]"
  local NO_COLOR="\[\033[0m\]"
  echo "$LIGHT_GREEN$1$NO_COLOR"
}

function ruby_version_prompt {
  local RUBY_VERSION_CMD="rbenv version-name"
  echo "'\$($RUBY_VERSION_CMD)'"
}

function include_ruby_version_in_prompt {
  PS1="\n$(red_text ':ruby') => $(green_text "$(ruby_version_prompt)")\n$PS1"
}

# Includes colored ruby version on the terminal command prompt
include_ruby_version_in_prompt

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

### Adds npm binaries to path
export PATH="/usr/local/share/npm/bin:$PATH"

## ENV vars for ec2-api-tools
# export JAVA_HOME="$(/usr/libexec/java_home)"
# export EC2_PRIVATE_KEY="$(/bin/ls "$HOME"/.ec2/pk-*.pem | /usr/bin/head -1)"
# export EC2_CERT="$(/bin/ls "$HOME"/.ec2/cert-*.pem | /usr/bin/head -1)"
# export EC2_HOME="/usr/local/Library/LinkedKegs/ec2-api-tools/jars"

export PGDATA="/usr/local/var/postgres"

# go-lang setup
export GOPATH="$HOME/.go"
export PATH="$PATH:$GOPATH/bin"

# plenv support
if which plenv > /dev/null; then eval "$(plenv init -)"; fi

export HOMEBREW_GITHUB_API_TOKEN="3b2e9b4b11768ee5ab38fa441b347f2c61057ee4"

# pyenv support
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# include dotnet in path
export PATH=$PATH:/usr/local/share/dotnet/

if [ -f `brew --prefix`/etc/profile.d/z.sh ]; then
  . `brew --prefix`/etc/profile.d/z.sh
fi
eval $(/usr/libexec/path_helper -s)

# rbenv support
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
