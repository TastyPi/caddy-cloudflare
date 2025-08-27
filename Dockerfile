FROM caddy:2.10.2-builder-alpine as builder

RUN caddy-builder github.com/caddy-dns/cloudflare


FROM caddy:2.10.2-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy