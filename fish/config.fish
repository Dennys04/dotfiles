if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting
end

# Aliases for Kitty Terminal
alias icat="kitten icat"

# Aliases Git
alias gti="git init"
alias gts="git status"
alias gtc="git commit"
alias gtps="git push"
alias gta="git add"

# Environment Variables

# JAVA

set -x JAVA_HOME $HOME/.jdks/jdk17
set -x PATH $JAVA_HOME/bin $PATH

# Rust pkgs via Cargo

set -x PATH ~/.cargo/bin/ $PATH
