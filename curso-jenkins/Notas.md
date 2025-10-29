
# Jobs
 - un Job es una tarea automatizada = servidor jenkins
   - puede compilar, 
   - hacer pruebas, 
   - despliegues, 
   - otro proceso repetitivos.

 - Tipos de Jobs
   - Freestyle = mas basico y facil de configurar
   - Pipeline = Utilizado en los flujos de CI-CD - Avanzado con scripts de Groovy
   - Multibranch Pipeline = ideal para proyectos con varias ramas en git
   - Maven Proyect = para proyectos en maven 

# Builds
 - Un Build es una ejecucion de un Job
 - cada vez que ejecutamos un Job se genera un Build diferente
   - obtiene el codigo fuente
   - ejecuta los pasos que has definido
   - registra la salida en la consola
   - Muestra el resultado en la interfaz

# Disparadores Automaticos
 - Polling SCM = revisa periodicamente si hay cambios en el repositorio git
 - Webhook = Dispara el Job cuando hay un cambio en el codigo
 - Programacion cron = se ejecuta en intervaloz de tiempo
 - Disparo por otro job = un job puede ejecutar otro job cuando termine

# Pluglins
 - Son extensiones que se agregan a jenkins y añaden nuevas funcionalidades

# Variables 

# Pipelines
 - un pipeline es un conjunto de etapas que nos dice como se va a construir probar y desplegar una app.
 - Por que usarlo?
   - automatizacion completa desde la compilacion - despliegue
   - Usamos un jenkinfile
   - multiples agentes y nodos
   - 
