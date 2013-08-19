PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin
HISTFILE=~/.zshrc_history
SAVEHIST=5000
HISTSIZE=5000
# Affiche toujours le chemin avant le nom de la machine dans le shell
export PS1='%n@%m %~/ '
export TERM=xterm-256color

setopt inc_append_history
setopt share_history

if [[ -f ~/.env ]]; then
  source ~/.env
fi

if [[ -f ~/.myzshrc ]]; then
  source ~/.myzshrc
fi

alias ls="ls -GF"
alias la="ls -laGF"
alias gita="git add -A"
alias gitc="git commit -m"
alias gitp="git push origin master"
alias gitl="git pull origin master"
alias yolo='git commit -am "DEAL WITH IT" && git push -f origin master'
# ignore les fichier dans les dossiers .git et .svn
alias gcco="gcc -Werror -Wextra -Wall -o bin"
alias lf="find . \( -name \.git -o -name \.svn -o -name \.hg \) -prune -o -exec ls -G -d {} \;"