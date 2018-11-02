# source .profile if it exists
if [ -e $HOME/.profile ]; then
	source $HOME/.profile
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# A dirty hack to make zsh stop nagging me about lack of 256 color support,
# but still allow me to make accommodations for the Linux console.
REALTERM=$TERM
TERM='xterm-256color'

# Path to your oh-my-zsh installation.
export ZSH=/home/christian/.oh-my-zsh

# Helpful aliases
alias sl='ls'
alias t='todo.sh'
#alias notify-job-done='notify-send -i "utilities-terminal-symbolic" "Terminal" "The job has been completed successfully."'
#alias whoops='sudo !!'	# TODO: find the weird hack that makes this command
			# actually work

# notify of job success or failure
notify-job-done () {
	local EXIT_STATUS=$?
	case $EXIT_STATUS in
		0)
			notify-send -i "utilities-terminal-symbolic" "Success" "The job has been completed successfully."
			;;
		1)
			notify-send -i "utilities-terminal-symbolic" "Failure" "The job has failed to complete."
			;;
		*)
			notify-send -i "utilities-terminal-symbolic" "Error" "An error has occurred."
			;;
	esac
	# make sure the exit code shows in the terminal
	return $EXIT_STATUS
}

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
[ "$REALTERM" != 'linux' ] && ZSH_THEME="powerlevel9k/powerlevel9k"

# powerlevel9k settings
# if we're not running in the linux console (i.e., a graphical terminal)
# use font-awesome cuz it's cool (actually nerdfont cuz it's better)
[ "$REALTERM" != 'linux' ] && POWERLEVEL9K_MODE='awesome-fontconfig'

# if we ARE in the linux console, use the terminus font patched for powerline
#[ "$REALTERM" = 'linux' ] && setfont /usr/share/consolefonts/ter-powerline-v16n.psf.gz

# prompt elements
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(root_indicator context_joined dir ssh)
#POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs load ram time)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs vcs todo time)

# 'root_indicator' settings
POWERLEVEL9K_ROOT_INDICATOR_FOREGROUND=001

# 'context' settings
DEFAULT_USER="christian"
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND=002
POWERLEVEL9K_CONTEXT_ROOT_FOREGROUND=001
POWERLEVEL9K_CONTEXT_BOLD=true	# doesn't currently work but is in a different
				# branch of powerlevel9k

# 'dir' appearance
POWERLEVEL9K_DIR_HOME_BACKGROUND=004
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=004
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=000
POWERLEVEL9K_DIR_HOME_FOREGROUND=000
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=000
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=004

# make dir show nothing but the current directory name
POWERLEVEL9K_HOME_FOLDER_ABBREVIATION="~"
POWERLEVEL9K_DIR_PATH_SEPARATOR=""
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_SHORTEN_DELIMITER=""
POWERLEVEL9K_SHORTEN_STRATEGY="truncate_folders"

# disable the FontAwesome directory icons
POWERLEVEL9K_HOME_ICON=""
POWERLEVEL9K_HOME_SUB_ICON=""
POWERLEVEL9K_FOLDER_ICON=""

# disable FontAwesome time icon
POWERLEVEL9K_TIME_ICON=""

# other settings
#POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
#POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_STATUS_OK=false
#POWERLEVEL9K_DISABLE_RPROMPT=true

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
