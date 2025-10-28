#!/bin/bash

echo "iniciando ejecucion de pruebas en jenkins"

#comprobar entorno virtual
if [ ! -d "venv" ]; then
    echo "entorno virtual no encontrado! creandolo.."
    python3 -m venv venv
fi  

ejecutar entorno virtual correctamente
if [ -f "venv/bin/activate" ]; then
    source venv/bin/activate
#elif [ -f "venv/Scripts/activate" ]; then 
#    source venv/Scripts/activate  
#else
#    echo "no se pudo activar el entorno"
#    exit 1
fi

#verificando si pip esta instalado
echo "instalando dependencias..."
pip install --upgrade pip --break-system-packages
pip install -r requeriments.txt --break-system-packages

echo "Ejecutando pruebas con pytest"
venv/bin/python -m pytest tests/ --junitxml=reports/test-result.xml --html=reports/test-result.html