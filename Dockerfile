FROM nginx:alpine
MAINTAINER kukam "kukam@freebox.cz"

# Install base packages
RUN apk update && apk upgrade && \
    apk add bash gettext && \
    rm -fr /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ADD https://raw.githubusercontent.com/kukam/docker-alpine-nginx/master/default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

#CMD ["nginx", "-g", "daemon off; error_log stderr info;"]

ENTRYPOINT ["/entrypoint.sh"]
