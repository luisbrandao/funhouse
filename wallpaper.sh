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

roleta=$(( ( RANDOM % 3 )  + 1 ))
case "${roleta}" in
  1)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/terry01.png'
      ;;
  2)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/terry02.png'
      ;;
  3)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/terry03.png'
      ;;
  4)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/cage01.png'
      ;;
  5)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/cage02.png'
      ;;
  6)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/cage03.png'
      ;;
  7)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/bieber01.png'
      ;;
  8)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/bieber02.png'
      ;;
  9)  imagem='https://raw.githubusercontent.com/luisbrandao/funhouse/master/Images/bieber03.png'
      ;;
esac

oldir=${PWD}
cd ~/.local
wget ${imagem}
gsettings set org.gnome.desktop.background picture-uri "${PWD}/$(basename ${imagem})"
cd ${oldir}
