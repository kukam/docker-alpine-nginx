FROM nginx:alpine

MAINTAINER kukam "kukam@freebox.cz"

# Install base packages
RUN apk --update --no-cache add bash gettext && \
    rm -fr /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
