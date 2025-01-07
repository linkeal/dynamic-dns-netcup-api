FROM php:8.2-cli-alpine
COPY . /
WORKDIR /

ENV SCHEDULE="*/5 * * * *" \
    CRON_CMD="php /update.php"

ENTRYPOINT ["/entrypoint.sh"]

CMD ["/usr/sbin/crond", "-f"]

SHELL ["/bin/ash"]
