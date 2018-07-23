# Area de juego con la herramienta Jupyter Notebook

Algunos ejemplos de la herramienta Jupyter Notebook, desde el contexto de un educador, para guías y cursos basadas en:
- Bash: Para cursos de GNU/Linux
- Python3, y Python3 con Matplotlib: Programación en general y uso científico
- Python3 con GPIO: Para obtener datos de sensores en una Raspberry Pi y tarjetas similares

# Instalación de Jupyter Notebook
Si va a realizar la instalación de Jupyter Notebook en varios equipos de trabajo de forma simultánea, se recomienda utilizar una herramienta como Ansible, con las [recetas para instalación de Jupyter Notebook](https://github.com/fede2cr/ansible_jupyter).

Para instalar en Debian/Ubuntu, copie y pegue en una terminal:
```bash
sudo apt-get install python3-pip
sudo pip3 install --upgrade pip
sudo pip3 install jupyter bash_kernel
sudo python3 -m bash_kernel.install
jupyter notebook --generate-config
echo "c.NotebookApp.password = 'sha512:8c79bf18770a:e874ca1ba53f2538c308830430211c3604fb4da03feefc64280584b690ff41448445490e38a697ba29049f69d003a5c2bf70bfed547e9fb6858f06ba202774bc'" >> .jupyter/jupyter_notebook_config.py
```

## Instalando con soporte de sudo
Para ejecutar tutoriales de los cursos de Greencore Solutions, debe también ejecutar los comandos del ejemplo de [sudo](https://github.com/fede2cr/jupyter_playground/blob/master/bash/01%20-%20Jypyter%20con%20Sudo.ipynb)

## Ejecutando Jupyter notebook

Para ejecutar jupyter-notebook, escriba en una terminal:
```bash
jupyter-notebook --ip=0.0.0.0
```
**Importante:** el usar ``--ip=0.0.0.0`` debe ser usado solamente en ambientes académicos. Esto permite que cualquier persona se conecte a nuestra estación de trabajo y ejecute comandos como nuestro usuario, usando ya sea bash o python3.

Luego de ejecutar este comando desde una sesión gráfica, se iniciará automáticamente un tab de web browser con un navegador de archivos de Jupyter-notebook, donde debes encontrar el archivo de la libreta para ejecutar.

Una vez dentro de la libreta, vas a tener bloques de código de Markdown para documentación, y bloques de bash, python3 u otros lenguajes. Puedes dar doble click en el bloque para editarlo, y *alt-enter* para ejecutar el código.


## Lista de ejemplos
- bash: Dentro de la carpeta puede aprender un poco de como usar Jupyter para dar clases o talleres sobre temas relacionados a GNU/Linux
- Cervecería con Matplotlib: Para tomar datos durante la fabricación de cerveza artesanal
- Voltage Divider: Fórmula básica de un divisor de voltaje, utilizada para medición de baterías, y cálculo de potenciómetros para fabricación de guitarras y bajos, tanto acústicos como eléctricos
- DHT11 Temperature sensor: Ejemplo de lectura en sensor DHT11 basado en la librería de Python de Adafruit para dicho sensor
- Notación musical con Fretboard: Usando el módulo fretboard, realizamos notación de figuras de acordes y escalas para instrumentos de cuerda.
