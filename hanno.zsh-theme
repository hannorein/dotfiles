git_prompt() {
	if git rev-parse --git-dir > /dev/null 2>&1; then
		ref=$(git symbolic-ref HEAD | cut -d'/' -f3)
		echo $ref
	fi
}
venv_prompt() {
	if [ -n "$VIRTUAL_ENV" ]; then
		ref=$(basename `dirname $VIRTUAL_ENV`)
		echo $ref
	fi
}
ZLE_RPROMPT_INDENT=0
local ret_status="%(?:%{$fg_bold[green]%}#:%{$fg_bold[red]%}#%s)"
PROMPT='%{$fg_bold[black]%}%n@%m:%{$fg[cyan]%}%~ ${ret_status} %{$reset_color%} '
RPROMPT='%{$fg[magenta]%}$(venv_prompt)%{$reset_color%}|%{$fg[green]%}$(git_prompt)%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
