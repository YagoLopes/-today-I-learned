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

# Instalando os pacotes atravez do gerenciador apt

if ! apt install git docker docker-compose nodejs npm software-properties-common apt-transport-https wget gimp openjdk-8-jre-headless filezilla snapd samba brasero libgconf-2-4 libappindicator1 -y; then
    echo "Não foi possível instalar os pacotes travez do gerenciador apt-get"
    exit 1
fi

# Instalando os pacotes atravez do gerenciador snap

if ! snap install discord figma-linux spotify insomnia; then
    echo "Não foi possível instalar os pacotes travez do gerenciador apt-get"
    exit 1
fi

#-----------------------------------------------------------------------

# Instalando os pacotes que não estão nos repositórios oficias do sistema

# Adicionando chaves de repo e novos repositórios
echo Adicionando novo repositório..

if !wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - && add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" && add-apt-repository ppa:kdenlive/kdenlive-stable && add-apt-repository ppa:obsproject/obs-studio && wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add - && add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"; then
    echo "Erro ao adicionar repositórios. Verifique se nenhum dos repósitorios estão quebrados ou se existe alguma chave invalida invalidas."
    exit 1
fi

# Atualizando nova lista de repos
if !apt-get update; then
    echo "Houve um problema coma a instalação do obs-studio atravéz do ppa:obsproject/obs-studio"
    exit 1
fi

# Instalando novos apps
if ! apt-get install code ffmpeg obs-studio sublime-text kdenlive -y; then
    echo "Não foi possivel instalar os novos pacotes atrevez do gerenciador apt-get"
    exit 1
fi

if !npm i yarn create-react-app -g; then
    echo "Não foi possive instalar pacotes via npm"
    exit 1
fi
