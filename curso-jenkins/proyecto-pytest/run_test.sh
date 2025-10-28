#!/bin/bash

echo "ejecutando entorno virtual"
if [!"-d venv" ]; then
    python3 -m venv venv
fi     
source venv/bin/activate

echo "instalando dependencias"
pip install --upgrade pip
pip install -r requeriments.txt

echo "Ejecutando pruebas con pytest"
pytest tests/ --junitxml=reports/test-result.xml --html=reports/test-result.html