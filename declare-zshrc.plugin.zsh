# Handle $0 according to the Zsh Plugin Standard:
# http://zdharma.org/Zsh-100-Commits-Club/Zsh-Plugin-Standard.html
0="${${ZERO:-${0:#$ZSH_ARGZERO}}:-${(%):-%N}}"

typeset -g DECLZSH_REPO_DIR="${0:h}"
typeset -g DECLZSH_CACHE_DIR="${XDG_CACHE_HOME:-$HOME/.cache}/declare-zshrc"

autoload @declzsh-process-buffer declzsh

alias declzsh='noglob declzsh'
