#!/bin/sh
#
#
# Bcakup local
# Version: 1.0.0
# Developer by Yago Lopes https://github.com/YagoLopes
#
# Confs do script
# DIR_ORIG diretório a ser backupeado 
# BKP_NAME Nome do arquivo gerado pelo backup 
# FTP_HOST Host do servidor ftp destino do backup
# FTP_USER Usuário do servidor ftp
# FTP_PASS Senha do usuario do servidor ftp

DIR_ORIG="/diretorio/a/ser/compactado/"
BKP_NAME="nome-do-arquivo.tgz"
FTP_HOST="ftp.servidor.com.br"
FTP_USER="usuario"
FTP_PASS="senha"

# Compactando os arquivos no diretório de origem  
tar -czpf ./${BKP_NAME} ${DIR_ORIG}

# envio para o FTP, onde neste caso, abrimos a conexao com o servidor, 
# deletamos o arquivo de backup ja existente e envia o novo backup para o 
# diretorio home do usuario do FTP.
ftp -in <<EOF
open $FTP_HOST
user $FTP_USER $FTP_PASS
bin
hash
prompt
del $BKP_NAME
put $BKP_NAME
bye
EOF

# mensagem de resultado
echo "Seu backup foi realizado com sucesso."
echo "Diretório: ${DIR_ORIG}"
echo "Destino: ${FTP_HOST}/${BKP_NAME}";
exit 0
