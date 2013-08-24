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
# rl = reload resave all
alias rl="cp ~/.zshrc ~/gitmypref/zshrc && source ~/.zshrc cp ~/.zshrc ~/gitmypref/zshrc && source ~/.zshrc && zip -r ~/gitmypref/mac_sublime_pref.zip ~/Library/Application\ Support/Sublime\ Text\ 3 ~/Library/Application\ Support/iTerm"
alias ls="ls -GF"
alias la="ls -laGF"
alias dolly="git clone"
alias gitp="git pull origin master"
alias yolo='git add -A && git commit -am "DEAL WITH IT" && git push -f origin master'
alias swag='git add -A && git commit -am "YMCM" && git push -f origin master'
# ignore les fichier dans les dossiers .git et .svn
alias gcco="gcc -Werror -Wextra -Wall"
alias lf="find . \( -name \.git -o -name \.svn -o -name \.hg \) -prune -o -exec ls -G -d {} \;"
# Pour recharger vos pref faites "source ~/.zshrc"