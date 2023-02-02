#!/bin/bash


echo "Atualizando o servidor e instalando pacotes..."

apt update -y
apt upgrade -y
apt install apache2 -y
apt install unzip -y

echo -e "Servidor atualizado e pacotes instalados!\n"

echo "Baixando aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo -e "Aplicação baixada!\n"

echo "Copiando arquivos para a pasta do server..."

cd /tmp/linux-site-dio-main
cp -R * /var/www/html

echo -e "Arquivos copiados!\n"
