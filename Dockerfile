FROM caddy:2.7.4-builder-alpine as builder

RUN caddy-builder github.com/caddy-dns/cloudflare


FROM caddy:2.7.4-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy