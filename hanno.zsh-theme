local ret_status="%(?:%{$fg_bold[green]%}%#:%{$fg_bold[red]%}%#%s)"
PROMPT='%{$fg_bold[black]%}%m:%{$fg[cyan]%}%~ ${ret_status}%{$reset_color%}'
RPROMPT='%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[blue]%}) %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
