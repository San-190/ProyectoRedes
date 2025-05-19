FROM python:3.9-slim
WORKDIR /app

# Copiamos requirements al mismo directorio de trabajo
COPY src/requirements.txt ./

# Instalamos dependencias
RUN pip install --no-cache-dir -r requirements.txt

# Copiamos el resto de la aplicación
COPY src/ .

# Expone el puerto en el que corre la aplicación
EXPOSE 5000

# Comando para ejecutar la aplicación
CMD ["python", "src/app.py"]