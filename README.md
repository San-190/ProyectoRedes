# Flask Kubernetes Azure Pipeline Starter

Este proyecto es una plantilla base para desplegar aplicaciones web desarrolladas en Python (Flask) utilizando Docker, Azure Pipelines y Kubernetes. Permite la integración continua y el despliegue automático en un clúster de Kubernetes, con imágenes almacenadas en Azure Container Registry (ACR).

## Características

- Aplicación web simple en Flask.
- Dockerización lista para producción.
- Pipeline CI/CD automatizado con Azure Pipelines.
- Despliegue automatizado en Kubernetes.
- Gestión de secretos para acceso a imágenes privadas en ACR.


## Estructura del proyecto

```
.
├── azure-pipelines.yml      # Definición del pipeline CI/CD
├── Dockerfile               # Dockerización de la app Flask
├── k8s/
│   └── deployment.yaml      # Manifiesto de despliegue en Kubernetes
├── src/
│   ├── app.py               # Código fuente de la aplicación Flask
│   └── requirements.txt     # Dependencias de Python
├── static/                  # Recursos estáticos (si se requieren)
└── templates/               # Plantillas HTML (si se requieren)
```

> Las carpetas `static/` y `templates/` pueden utilizarse si la aplicación Flask lo requiere para archivos estáticos o plantillas HTML.

## Despliegue

El pipeline de Azure realiza los siguientes pasos:

1. Instala dependencias de Python.
2. Construye la imagen Docker y la sube a Azure Container Registry.
3. Actualiza el manifiesto de Kubernetes con la nueva imagen.
4. Aplica el manifiesto al clúster de Kubernetes.


## Requisitos

- Azure DevOps y Azure Pipelines configurados.
- Azure Container Registry (ACR).
- Clúster de Kubernetes (AKS o compatible).
- Docker y kubectl instalados localmente para despliegues manuales.

## Personalización

- Modifica `src/app.py` para cambiar la lógica de la aplicación.
- Ajusta el número de réplicas o recursos en `k8s/deployment.yaml`.
- Agrega más dependencias en `src/requirements.txt` según tus necesidades.

---

Desarrollado para fines educativos.
