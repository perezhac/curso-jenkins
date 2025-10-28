#!/bin/bash

echo "ejecutando entorno virtual"
source venv/bin/activate

echo "instalando dependencias"
pip install -r requeriments.txt

echo "Ejecutando pruebas con pytest"
pytest tests/ --junitxml=reports/test-result.xml --html=reports/test-result.html