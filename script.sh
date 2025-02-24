#!/bin/bash

# Definição do arquivo de log
LOG_FILE="/var/log/scriptzin.log"
exec > >(tee -a "$LOG_FILE") 2>&1

# Instalando e ativando Apache
sudo yum install -y httpd
sudo systemctl enable httpd
sudo systemctl start httpd

# Removendo arquivos da pasta de destino
sudo rm -rf /var/www/html/*

# Clonando projeto web aleatório
sudo git clone https://github.com/matheusmanuel/site-simples-com-html-e-css- /var/www/html

# Fazendo post para gravar resultado
sudo curl -X POST -d "nome=Gabriel Torres" https://difusaotech.com.br/lab/aws/index.php
