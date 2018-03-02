FROM alpine

MAINTAINER kukam "kukam@freebox.cz"

RUN apk --update --no-cache add bash nginx \
    && mkdir /run/nginx \
    && mkdir -p /PWE/webapps/myproject \
    && rm -fr /var/cache/apk/*

COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
