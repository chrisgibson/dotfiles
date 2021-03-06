# Path to the oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="bullet-train"

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

# Use hyphen-insensitive completion. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(bundler git github history rbenv)

# Specify rbenv installation, otherwise the oh-my-zsh plugin uses the brew
# installation path.
RBENV_ROOT=~/.rbenv

source $ZSH/oh-my-zsh.sh

export EDITOR=vim
export PATH="~/bin:$PATH"

# Automatically install overcommit hooks
if type overcommit > /dev/null; then
  export GIT_TEMPLATE_DIR=`overcommit --template-dir`
fi

# If there is a local ZSH configuration, source it.
if [ -f ~/.zshrc.local ]; then
  source ~/.zshrc.local
fi
