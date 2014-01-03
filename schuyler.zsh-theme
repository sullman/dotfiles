# Clean, simple, compatible and meaningful.
# Tested on Linux, Unix and Windows under ANSI colors.
# It is recommended to use with a dark background and the font Inconsolata.
# Colors: black, red, green, yellow, *blue, magenta, cyan, and white.
# 
# http://ysmood.org/wp/2013/03/my-ys-terminal-theme/
# Mar 2013 ys

# Machine name.
function box_name {
    [ -f ~/.box-name ] && cat ~/.box-name || hostname -s
}

# Directory info.
local current_dir='${PWD/#$HOME/~}'

# Git info.
local git_info='$(git_prompt_info)'
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[cyan]%})%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=":%{$fg[red]%}x"
ZSH_THEME_GIT_PROMPT_CLEAN=":%{$fg[green]%}o"

#local vim_mode='nope'

function zle-keymap-select {
  VIM_MODE="${${KEYMAP/vicmd/(vi) }/(main|viins)/}"
  setprompt
  zle reset-prompt
  zle -R
}

zle -N zle-keymap-select

setprompt() {
  setopt prompt_subst

  # Prompt format: \n [TIME] USER@MACHINE:  DIRECTORY (BRANCH:STATE) [TIME] \n $ 
  PROMPT="
%{$fg[yellow]%}[%D{%a} %*]%{$reset_color%} \
%{$fg[cyan]%}%n@\
%{$fg[green]%}$(box_name):  \
%{$fg[cyan]%}%4c%{$reset_color%}\
${git_info} \

${VIM_MODE}%{$fg[green]%}%(!.#.$)%{$reset_color%} "

  RPROMPT=" "
}

setprompt

