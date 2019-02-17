FROM alpine:latest
RUN apk add git --no-cache
WORKDIR /app
COPY update.sh /
CMD ["/bin/sh","/update.sh"]
