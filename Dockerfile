FROM caddy:2.11.3-builder-alpine AS builder

RUN caddy-builder github.com/caddy-dns/cloudflare


FROM caddy:2.11.3-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
