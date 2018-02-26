FROM alpine
#FROM nginx:alpine

MAINTAINER kukam "kukam@freebox.cz"

# Install base packages
# gettext
RUN apk --update --no-cache add bash nginx \
    && mkdir /run/nginx \ 
    && rm -fr /var/cache/apk/*

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

COPY default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

#ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off; error_log stderr info; access_log stdout info;"]
