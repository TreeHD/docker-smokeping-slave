FROM ghcr.io/linuxserver/smokeping
RUN apk add perl-lwp-protocol-https
LABEL maintainer="Daniel Graziotin <daniel@ineed.coffee>"
ENV SHARED_SECRET= \
    MASTER_URL= \ 
    SLAVE_NAME=
# add local files
COPY root/etc/services.d/smokeping/run /etc/services.d/smokeping/run
