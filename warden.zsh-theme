dir() {
  echo "%F{yellow}  %3~%f"
}


ZSH_THEME_GIT_PROMPT_PREFIX="%F{black}%K%F{red} %f%K"
ZSH_THEME_GIT_PROMPT_SUFFIX="%k%F{black}%f "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{red} "
ZSH_THEME_GIT_PROMPT_CLEAN=""


PROMPT='%F{magenta}%F%K{magenta}%F{black} $HOST %F%f%K$(dir)%k%F '
PROMPT+='$(git_prompt_info)'
PROMPT+='%F{white}%f%F{black}%K{white}%k%F%k%F{white}%f '
