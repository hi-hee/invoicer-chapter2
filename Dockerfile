FROM busybox:latest
RUN addgroup --gid 10001 app && \
    adduser --G app -u 10001 \
    -D -h /app -s /sbin/nologin app

COPY bin/invoicer /abin/invoicer
USER app
EXPOSE 8080
ENTRYPOINT /bin/invoicer
