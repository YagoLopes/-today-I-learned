#!/bin/sh
#
# Bcakup local
# Version: 1.0.0
# Developer by Yago Lopes https://github.com/YagoLopes
#
# Confs do script
# DIR_ORIG diretório a ser backupeado 
# DIR_DEST diretório destino do backup
# BKP_NAME Nome do arquivo gerado pelo backup 

DIR_ORIG="/diretorio/a/ser/compactado/"
DIR_DEST="/diretorio/a/ser/enviado/o/arquivo"
BKP_NAME="nome-do-arquivo.tgz"

# Compactando os arquivos no diretório de origem  
tar -czpf ${DIR_DEST}${BKP_NAME} ${DIR_ORIG}

# mensagem de resultado
echo "Seu backup foi realizado com sucesso."
echo "Diretório: ${DIR_ORIG}"
echo "Destino: ${DIR_DEST}${BKP_NAME}";
exit 0
