export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

# Bullet Train theme
# https://github.com/caiogondim/bullet-train.zsh
setopt prompt_subst
zplug "caiogondim/bullet-train.zsh", use:bullet-train.zsh-theme

BULLETTRAIN_PROMPT_ORDER=(
  time
  dir
  git
  status
  cmd_exec_time
)
BULLETTRAIN_TIME_BG=black
BULLETTRAIN_TIME_FG=white
BULLETTRAIN_DIR_EXTENDED=0

# Install plugins (if needed).
if ! zplug check; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  fi
fi

zplug load

# Initialize rbenv if present.
if [ ! -z `which rbenv` ]; then
  eval "$(rbenv init -)"
fi

# Aliases
alias be="bundle exec"
alias gst="git status"

# If there is a local ZSH configuration, source it.
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi
