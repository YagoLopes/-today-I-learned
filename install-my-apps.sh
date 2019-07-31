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
echo "Atualização feita com sucesso"

echo "Atualizando pacotes já instalados"
if ! apt-get dist-upgrade -y; then
    echo "Não foi possível atualizar pacotes."
    exit 1
fi
echo "Atualização de pacotes feita com sucesso"

# Instalando os pacotes que já estão nos repositórios oficias do sistema

if ! apt-get install gimp; then
    echo "Não foi possível instalar o pacote GIMP"
    exit 1
fi
if ! apt-get install filezilla; then
    echo "Não foi possível instalar o pacote filezilla"
    exit 1
fi
if ! apt-get install snapd; then
    echo "Não foi possível instalar o pacote snapd"
    exit 1
fi
if ! apt-get install samba; then
    echo "Não foi possível instalar o pacote samba"
    exit 1
fi
if ! apt-get install brasero; then
    echo "Não foi possível instalar o pacote brasero"
    exit 1
fi
if ! snap install sudo snap install sublime-text-3 --classic --candidate; then
    echo "Não foi possível instalar o pacote sublime-text-3"
    exit 1
fi
if ! snap install discord; then
    echo "Não foi possível instalar o pacote discord"
    exit 1
fi
if ! snap install figma-linux; then
    echo "Não foi possível instalar o pacote figma-linux"
    exit 1
fi
if ! apt install libgconf-2-4 libappindicator1; then
    echo "Não foi possível instalar o pacote libgconf-2-4 libappindicator1"
    exit 1
fi
if ! snap install spotify; then
    echo "Não foi possível instalar o pacote discord"
    exit 1
fi
if ! snap install insomnia; then
    echo "Não foi possível instalar o pacote discord"
    exit 1
fi

#-----------------------------------------------------------------------

# Instalando os pacotes que não estão nos repositórios oficias do sistema

# Instalando kadenlive
echo Adicionando novo repositório..
if ! add-apt-repository ppa:kdenlive/kdenlive-stable && apt-get update && apt-get install kdenlive; then
    echo "Houve um problema coma a instalação do kadenlive atravéz do ppa:kdenlive/kdenlive-stable"
    exit 1
fi

# Install ffmpeg
if ! apt-get install ffmpeg; then
    echo "Não foi possível instalar o pacote ffmpeg"
    exit 1
fi

# Instalando obs-studio
if ! add-apt-repository ppa:obsproject/obs-studio && apt-get update && apt-get install obs-studio; then
    echo "Houve um problema coma a instalação do obs-studio atravéz do ppa:obsproject/obs-studio"
    exit 1
fi

# Instalando audacity
if ! add-apt-repository ppa:audacity-team/daily && apt-get update && apt-get install audacity; then
    echo "Houve um problema coma a instalação do audacity atravéz do ppa:audacity-team/daily"
    exit 1
fi

# Instalando openjdk-8
if ! add-apt-repository ppa:openjdk-r/ppa && apt-get update && apt-get install openjdk-8-jdk; then
    echo "Houve um problema coma a instalação do openjdk atravéz do ppa:openjdk-r/ppa"
    exit 1
fi

#virtual box
#vs code
#node
#npm
#yarn
#react
#docker
#docker-compose
#git
