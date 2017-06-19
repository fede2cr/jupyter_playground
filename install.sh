#!/bin/bash
# Instalador de Jupyter notebook para ser usado en ambiente educativo
# Para cursos en Greencore Solutions

set +x

user=greencore

# Tareas administrativas, instalación de paquetes
sudo apt-get install -y python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install jupyter bash_kernel
sudo python3 -m bash_kernel.install

# Creando configuración desde cuenta del usuario, clave "greencore"

sudo -u ${user} jupyter notebook --generate-config
sleep 5s
echo "c.NotebookApp.password = 'sha512:8c79bf18770a:e874ca1ba53f2538c308830430211c3604fb4da03feefc64280584b690ff41448445490e38a697ba29049f69d003a5c2bf70bfed547e9fb6858f06ba202774bc'" >> ~${user}/.jupyter/jupyter_notebook_config.py

# Para permisos con sudo
echo '%sudo ALL=(ALL) NOPASSWD: ALL'  | sudo tee /etc/sudoers.d/jupyter
echo "Defaults:${user} !requiretty" | sudo tee -a /etc/sudoers.d/jupyter
sudo chmod 0440 /etc/sudoers.d/jupyter

