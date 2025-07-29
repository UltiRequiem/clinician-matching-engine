FROM node:22

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build
RUN npm run prisma:generate

EXPOSE 3000

CMD ["node", "dist/main"]