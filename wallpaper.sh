#!/bin/bash
# ░░░░░░░░▄▀▀████████▀██████▄▄▄▄▄▄░░░░░░░░
# ░░░░░░▄▀░▄▀░░▄▄▄▄▄░▀▄▄▄▄▄▄▀▀▀▄▄░▀▄░░░░░░
# ░░░░▄▀░░▀░▄▄▀░░░░░▀█▄░░░▄▀▀▀▀▄▀▀░░█░░░░░
# ░░░▄▀░░░░▄▀░▄███▀▀▄░▀░░█░▄▄▄▄▄░░▄▄█▄░░░░
# ░▄▀░░▄▀▀▄░░▀▀░▄▀▀▀██░░░██▀▀▀░▀▀░▀▀▀██▄░░
# █░░▄▀░▄▄░▀▀░▀▀░░▄░▄▄░░░░█▄░░▄▄▀▀▀█▄░██░░
# ▀░░▀░▀▀░▀▀░░░░░▀░▀░░░░░░░▀▀▀░░░░░░░░░░░░
# ▄▄▄▄░░▄▄▄▄░░░▄▄▄░░▄▄▄▄░░▄▄░░░▄▄▄░▄▄░░░▄▄
# ██░██░██░██░██░██░██▄█▀░██░░░██▄░███▄███
# ██▀▀░░██▀█▄░██░██░██░██░██░░░██▀░██▀█▀██
# ██░░░░██░██░▀█▄█▀░████▀░████░███░██░░░██
# ░░░░░░░░░░░░░░░░░░░▄▄▄▄░░░░░░░░░░░░░░░░░
# ░░░░░░░░░░░░░░░░▄███▀▀▀██▄░░░░░░░░░░░░░░
# ░░░░░░░░░░░░░░░░███░░░░░███░░░░░░░░░░░░░
# ░░░░░░░░░░░░░░░░░░░░▄▄▄██▀░░░░░░░░░░░░░░
# ░░░░░░░░░░░░░░░░░░░██▀▀░░░░░░░░░░░░░░░░░
# ░░░░░░░░░░░░░░░░░░░██░░░░░░░░░░░░░░░░░░░
# ░░░░░░░░░░░░░░░░░░░▄▄░░░░░░░░░░░░░░░░░░░
# ░░░░░░░░░░░░░░░░░░░▀▀░░░░░░░░░░░░░░░░░░░

if [[ ${EUID} == 0 ]] ; then
  # ROOT SHALL NOT BE ZOADO EVER
  exec $executable "$@"
fi

roleta=$(( ( RANDOM % 9 )  + 1 ))
case "${roleta}" in
  1)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/terry01.jpg'
      ;;
  2)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/terry02.jpg'
      ;;
  3)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/terry03.jpg'
      ;;
  4)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/cage01.jpg'
      ;;
  5)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/cage02.jpg'
      ;;
  6)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/cage03.jpg'
      ;;
  7)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/bieber01.jpg'
      ;;
  8)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/bieber02.jpg'
      ;;
  9)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/bieber03.jpg'
      ;;
esac

oldir=${PWD}
raw=$(basename ${imagem})
cd ~/.local
# Checa se a imagem já existe.
if [[ ! -f ${raw} ]] ; then
  echo "${raw} Não existe"
  wget ${imagem}
else
  echo "${raw} já existe"
fi

# Muda o wallpaper
gsettings set org.gnome.desktop.background picture-uri "${PWD}/${raw}"
cd ${oldir}
