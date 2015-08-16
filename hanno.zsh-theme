venv_prompt() {
	if [ -n "$VIRTUAL_ENV" ]; then
		ref=$(basename `dirname $VIRTUAL_ENV`)
		echo "%{$fg[magenta]%}$ref%{$reset_color%}|"
	fi
}
#function git_prompt_info() {
#  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
#  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$ZSH_THEME_GIT_PROMPT_SUFFIX"
#}
#ZLE_RPROMPT_INDENT=0
local ret_status="%(?:%{$fg_bold[green]%}#:%{$fg_bold[red]%}#%s)"
PROMPT='%{$fg_bold[black]%}%n@%m:%{$fg[cyan]%}%~ ${ret_status}%{$reset_color%} '
RPROMPT='$(venv_prompt)$(parse_git_dirty)$(git_prompt_info)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"
