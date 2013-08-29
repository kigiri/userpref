#!/bin/sh ******************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    .zshrc                                             :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cdenis <cdenis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/08/28 17:15:14 by cdenis            #+#    #+#              #
#    Updated: 2013/08/29 12:22:45 by cdenis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin
HISTFILE=~/.zshrc_history
SAVEHIST=5000
HISTSIZE=5000
# Affiche toujours le chemin avant le nom de la machine dans le shell
#export PS1='%n@%m %~/ '
export PS1=$'\e[0;32m%n@%m %~/ \e[0m'
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
alias mypref="cd ~/gitmypref"
alias uid="sh ~/gitmypref/.phone.sh"
alias massmail="sh ~/gitmypref/.mail_correction.sh"
alias phone="sh ~/gitmypref/.phone.sh"
alias rl="cp ~/.zshrc ~/gitmypref/zshrc && source ~/.zshrc cp ~/.zshrc ~/gitmypref/zshrc && source ~/.zshrc && zip -r ~/gitmypref/mac_sublime_pref.zip ~/Library/Application\ Support/Sublime\ Text\ 3 ~/Library/Application\ Support/iTerm"
alias ls="ls -GF"
alias la="ls -laGF"
alias sub="~/Downloads/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias c="clear"
alias ..="cd .."
alias  .2="cd ../../"
alias ...="cd ../../"
alias   .3="cd ../../../"
alias ....="cd ../../../"
alias    .4="cd ../../../../"
alias    .5="cd ../../../../.."
alias cd..="cd .."
alias dolly="sh ~/gitmypref/.dolly.sh"
alias gitp="git pull origin master"
alias yolo='git add -A && git commit -am "DEAL WITH IT" && git push -f origin master'
alias swag='git add -A && git commit -am "YMCM" && git push -f origin master'
# ignore les fichier dans les dossiers .git et .svn
alias gww="gcc -Werror -Wextra -Wall"
alias lf="find . \( -name \.git -o -name \.svn -o -name \.hg \) -prune -o -exec ls -G -d {} \;"
# Pour recharger vos pref faites "source ~/.zshrc"
