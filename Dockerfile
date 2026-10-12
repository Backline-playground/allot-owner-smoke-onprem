# E2E fixture: the base image lives in a self-hosted-style JFrog Artifactory (repository-path layout,
# virtual repository, nested image path).
FROM 192.168.65.254:5090/dima-docker-test-docker/allot-owner-smoke/debian:12.5-slim

LABEL org.opencontainers.image.source="https://github.com/Backline-playground/allot-owner-smoke-onprem"

COPY app.sh /app.sh
RUN chmod +x /app.sh

CMD ["/app.sh"]
