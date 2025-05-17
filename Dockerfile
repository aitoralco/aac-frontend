#Pilla la imagen de microsoft de ubuntu
# FROM ubuntu:22.04
FROM node:22

#instala paquete zx-utils
#RUN apt-get update && apt-get install -y \
#    curl \
#    xz-utils \
#    ca-certificates \
#    git \
#    build-essential


#instala node 22.x para angular 12
# RUN curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && \
#     apt-get install -y nodejs

#Install Angular CLI globally
RUN npm install -g @angular/cli

# Setup del proyecto
WORKDIR /app
COPY . .
# RUN npm install
EXPOSE 4200 49153

#For the dockerfile CMD to work it has to be allowed by the devcontainers.json
CMD ["npm", "start"]