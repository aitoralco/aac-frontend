#Pilla la imagen de microsoft de ubuntu
FROM mcr.microsoft.com/devcontainers/base:ubuntu

#instala paquete zx-utils
RUN apt-get update && apt-get install -y xz-utils

