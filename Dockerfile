FROM node:22-slim
WORKDIR /app

RUN npm install -g npm@latest

COPY package.json ./
RUN npm install

COPY . .

RUN npx --prefix web next build

EXPOSE 3000
CMD ["npx", "--prefix", "web", "next", "start"]
