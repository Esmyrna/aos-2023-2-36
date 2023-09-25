FROM node:16

# Usa o diretório padrão
WORKDIR /app

COPY . /app

# Instala as dependências 
RUN npm install

# Instala o sequelize
RUN npm install sequelize

ENV PORT 3000
EXPOSE 3000
CMD [ "npm", "start" ]