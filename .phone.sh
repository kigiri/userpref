#!/bin/sh ******************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    .phone.sh                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: cdenis <cdenis@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2013/08/28 13:28:24 by cdenis            #+#    #+#              #
#    Updated: 2013/08/28 17:44:21 by cdenis           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

if echo "$1" | grep -qE ^\-?[0-9]?\.?[0-9]+$; then
   echo "\x1b[31m> Recherche par telephone :\x1b[0m" && ldapsearch -Q mobile-phone=$1\* | grep "mobile\|uid:\|mail\|name" | awk -F: '{print $1 ":\x1b[33m" $2 "\x1b[0m"}'
else
   echo "\x1b[31m> Recherche par pseudo :\x1b[0m" && ldapsearch -Q uid=$1 | grep "mobile\|uid:\|mail\|name" | awk -F: '{print $1 ":\x1b[33m" $2 "\x1b[0m"}'
fi
