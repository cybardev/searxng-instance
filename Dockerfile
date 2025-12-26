FROM ghcr.io/searxng/searxng:latest

ENV SEARXNG_SETTINGS_PATH=/etc/searxng/settings.json

COPY settings.json limiter.toml /etc/searxng/

EXPOSE 8080

ENTRYPOINT ["/usr/local/searxng/entrypoint.sh"]
