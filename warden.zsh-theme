dir() {
  echo "%F{red}  %3~%f"
}


ZSH_THEME_GIT_PROMPT_PREFIX="%F{black}%K%F{magenta} %f%K"
ZSH_THEME_GIT_PROMPT_SUFFIX="%k%F{black}%f "
ZSH_THEME_GIT_PROMPT_DIRTY="%F{magenta} "
ZSH_THEME_GIT_PROMPT_CLEAN=""


PROMPT='%F{magenta}%F%K{magenta}%F{black} %F%f%K$(dir)%k%F '
PROMPT+='$(git_prompt_info)'
PROMPT+='%F{white}%f%F{black}%K{white}%k%F%k%F{white}%f '
