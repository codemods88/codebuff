FROM node:22-slim
WORKDIR /app

RUN npm install -g npm@latest

COPY package.json ./
RUN npm install

COPY . .

WORKDIR /app/web
RUN npx next build
WORKDIR /app

EXPOSE 3000
WORKDIR /app/web
CMD ["npx", "next", "start"]
