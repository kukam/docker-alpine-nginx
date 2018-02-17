
FROM nginx/alpine
MAINTAINER kukam "kukam@freebox.cz"

# Install base packages
RUN apk update && apk upgrade && \
    apk add bash tree nginx
    
EXPOSE 80

CMD ["nginx", "-g", "daemon off; error_log stderr info;"]
