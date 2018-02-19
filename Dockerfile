FROM nginx:alpine
MAINTAINER kukam "kukam@freebox.cz"

# Install base packages
RUN apk update && apk upgrade && \
    apk add bash && \
    rm -fr /var/cache/apk/*

EXPOSE 80

ADD https://raw.githubusercontent.com/kukam/docker-alpine-nginx/master/default.conf.template /tmp/default.conf.template

ENTRYPOINT ["/tmp/default.conf.template > /etc/nginx/conf.d/default.conf"]

CMD ["nginx", "-g", "daemon off; error_log stderr info;"]
