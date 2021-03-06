FROM alpine:3.3
MAINTAINER Nan Wang - Cloud / SAP // Thanks to Alex Bordei - Bigstep Inc., Simen Huuse - NTT Data
LABEL Nan Wang - Cloud / SAP // Thanks to Alex Bordei - Bigstep Inc., Simen Huuse - NTT Data

RUN apk add --update darkhttpd && rm -rf /var/cache/apk/*

ADD index.html /var/www/localhost/htdocs/index.html
ADD entrypoint.sh /entrypoint.sh
ADD sapcloudplatform.png /var/www/localhost/htdocs/sapcloudplatform.png
ADD nttdata.png /var/www/localhost/htdocs/nttdata.png
ADD git.gif /var/www/localhost/htdocs/git.gif
ADD docker.jpg /var/www/localhost/htdocs/docker.jpg
ADD architecture.png /var/www/localhost/htdocs/architecture.png

EXPOSE 80

ENTRYPOINT ["/entrypoint.sh"]
