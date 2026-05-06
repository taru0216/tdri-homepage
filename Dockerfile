# === Stage 1: Astro build ===
FROM node:22-alpine AS builder
WORKDIR /build
COPY portal/package.json portal/package-lock.json* ./
RUN npm install
COPY portal/ ./
RUN npm run build
# Output: /build/dist/

# === Final Stage: Caddy ===
FROM caddy:2-alpine

COPY Caddyfile /etc/caddy/Caddyfile
COPY --from=builder /build/dist/ /srv/

EXPOSE 8080
