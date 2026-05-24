FROM node:22-slim
WORKDIR /app

ENV COREPACK_ENABLE_STRICT=0

RUN npm install -g npm@latest

COPY . .

RUN npm install

WORKDIR /app/web
RUN npm install
RUN npx next build

EXPOSE 3000
CMD ["node", "node_modules/.bin/next", "start"]
