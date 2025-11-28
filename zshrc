export ANDROID_HOME=/Users/dtidigital/Library/Android/sdk
export PATH=$PATH:/usr/local/git/bin:usr/local/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$HOME/.maestro/bin
export PATH="/opt/homebrew/opt/openjdk@17/bin:$PATH"


alias ll='ls -la'

# Functions
function mkcd () {
    mkdir -p "$@" && cd "$_"
}
 
function parse_git_branch () {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

# Enable substitution in the prompt.
setopt prompt_subst
 
# Customize Prompt
PROMPT='%(?.%F{green}💻.%F{red}⛈️%?)%f %B%F{magenta}$(parse_git_branch)%F{99}%1~%F{black} %# %f%b'

 
 