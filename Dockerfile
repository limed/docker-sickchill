FROM limed/alpine-base
MAINTAINER limed@sudoers.org

# Install packages
RUN apk --no-cache add git \
        && pip install supervisor \
        && mkdir -p /etc/supervisor

RUN git clone --depth=1 https://github.com/SickRage/SickRage.git /app/sickrage

COPY files/supervisord.conf /etc/supervisor/supervisord.conf

VOLUME /tv
VOLUME /downloads
EXPOSE 8081

CMD [ "/usr/bin/supervisord" ]
