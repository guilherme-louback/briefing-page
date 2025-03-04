FROM node:current
WORKDIR /app

COPY package.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["node", "./src/core/node/index.js"]
