#!/bin/bash

# Checa usuário
if [[ ${EUID} == 0 ]] ; then
  echo "Estou executando como root. Melhor não"
  exit 1
fi

# Checa diretorio
if [[ ! -d ~/.bin ]] ; then
  echo "criando diretorio"
  mkdir ~/.bin
fi

## ==== Wallpaper ===================================================
curl --silent https://raw.githubusercontent.com/luisbrandao/funhouse/master/wallpaper.sh | bash


## ==== ls2 =========================================================
## Desativado
# curl --silent https://raw.githubusercontent.com/luisbrandao/funhouse/master/ls2 > ~/.bin/ls2
# if [[ -f ~/.bin/ls2  ]] ; then
#   echo "Garantindo permissão de execução"
#   chmod +x ~/.bin/ls2
# else
#   echo "Curl falhou em criar ls2"
#   exit 1
# fi
#
# echo ""
# echo ""  >> ~/.bashrc
# echo '# Hello there' >> ~/.bashrc
# echo 'export PATH=$PATH:~/.bin/' >> ~/.bashrc
# echo "alias ls='ls2'" >> ~/.bashrc
# echo '# Bye' >> ~/.bashrc

echo 'All done!'
