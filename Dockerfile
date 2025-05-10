# Usamos una imagen base ligera de Node.js
FROM node:18-alpine

# Definimos el directorio de trabajo
WORKDIR /usr/src/app

# Copiamos las dependencias primero para optimizar la cache
COPY package*.json ./
RUN npm install

# Ahora copiamos el código fuente de la app
COPY . .

# Exponemos el puerto en el que escuchará la app
EXPOSE 3000

# Comando para iniciar la app
CMD ["npm", "start"]
