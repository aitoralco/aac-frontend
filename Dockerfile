#Use node:22 as base image, comes with development tools for node and git
FROM node:22

#Install Angular CLI globally
RUN npm install -g @angular/cli

# prokect setup
WORKDIR /app
COPY . .

# RUN npm install
EXPOSE 4200 49153

#For the dockerfile CMD to work it has to be allowed by the devcontainers.json
CMD ["npm", "start"]