#!/bin/sh
#
# Bcakup local
# Version: 1.0.0
# Developer by Yago Lopes https://github.com/YagoLopes

echo Atualizando repositórios..
if ! apt-get update; then
    echo "Não foi possível atualizar os repositórios. Verifique seu arquivo /etc/apt/sources.list"
    exit 1
fi

echo "Atualizando pacotes já instalados"
if ! apt-get dist-upgrade -y; then
    echo "Não foi possível atualizar pacotes."
    exit 1
fi

# Instalando os pacotes atravez do gerenciador apt

if ! apt install docker-compose npm rar yarn software-properties-common apt-transport-https wget openjdk-8-jre-headless filezilla snapd samba brasero libgconf-2-4 libappindicator1 -y; then
    echo "Não foi possível instalar os pacotes travez do gerenciador apt-get"
    exit 1
fi

# Instalando os pacotes atravez do gerenciador snap

if ! snap install node --classic docker git-ubuntu --classic discord figma-linux spotify gimp insomnia vscode --classic sublime-text --classic vlc skype --classic telegram-desktop transmission-daemon-simosx kdenlive --edge so-trello --edge obs-studio ffmpeg robo3t-snap; then
    echo "Não foi possível instalar os pacotes travez do gerenciador apt-get"
    exit 1
fi

# Atualizando nova lista de repos
if !apt update; then
    echo "Houve um problema coma a instalação do obs-studio atravéz do ppa:obsproject/obs-studio"
    exit 1
fi

#Removendo pacotes desnecessários
if !apt autoremove; then
    echo "Não foi possive remover pacotes desnecessários"
    exit 1
fi
