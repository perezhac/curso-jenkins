#!/bin/bash

echo "iniciando ejecucion de pruebas en jenkins"

# Instalar dependencias del sistema (solo primera vez)
sudo apt-get update -y
sudo apt-get install -y python3-venv python3-pip

# Borramos y recreamos el entorno virtual
rm -rf venv
python3 -m venv venv
source venv/bin/activate

# Actualizamos pip y setuptools
pip install --upgrade pip setuptools wheel

# Instalamos dependencias
echo "instalando dependencias..."
pip install -r requeriments.txt

echo "Ejecutando pruebas con pytest"
venv/bin/python -m pytest tests/ --junitxml=reports/test-result.xml --html=reports/test-result.html