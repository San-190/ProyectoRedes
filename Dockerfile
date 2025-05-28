FROM python:3.9-slim
WORKDIR /app

# Copia el archivo requirements.txt desde el directorio src del proyecto
# local al directorio de trabajo (/app) dentro del contenedor.
COPY src/requirements.txt ./

# Instalamos dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copia todos los archivos y carpetas desde el directorio src del proyecto
# local al directorio de trabajo (/app) dentro del contenedor.
COPY src/ .

# Expone el puerto en el que corre la aplicación
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "app.py"]