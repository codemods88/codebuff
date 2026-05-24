FROM oven/bun:1
WORKDIR /app

COPY . .

RUN bun install --frozen-lockfile
RUN bun --cwd web run build

EXPOSE 3000
CMD ["bun", "--cwd", "web", "start"]
