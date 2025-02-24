#!/bin/bash

# Instalando e ativando Apache
yum install -y httpd
sudo systemctl enable httpd
sudo systemctl start httpd

# removendo arquivos da pasta de destino
rm -rf /var/www/html/*

# clonando projeto web aleatorio
git clone https://github.com/matheusmanuel/site-simples-com-html-e-css- /var/www/html

# fazendo post para gravar resultado
curl -X POST -d "nome=Gabriel Torres" https://difusaotech.com.br/lab/aws/index.php
