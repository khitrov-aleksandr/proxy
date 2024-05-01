FROM nginx:alpine
RUN apk add certbot certbot-nginx bash openrc --no-cache

COPY scripts/99-run-cron.sh /docker-entrypoint.d
COPY scripts/letsencrypt-renew.sh /etc/periodic/hourly

RUN chmod +x /docker-entrypoint.d/99-run-cron.sh
RUN chmod +x /etc/periodic/daily/letsencrypt-renew.sh
