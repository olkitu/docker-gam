FROM python:3.8-alpine3.13

LABEL maintainer="minh@truong.fi" 

ARG USER=gam
ENV HOME /home/$USER

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN adduser -D $USER \
    && apk add --no-cache bash curl \
    && cd /tmp \
    && curl -L -o $HOME/install-gam https://git.io/install-gam \
    && chown $USER $HOME/install-gam \
    && chmod 700 $HOME/install-gam \
    && chown $USER /usr/local/bin/docker-entrypoint.sh \
    && chmod 700 /usr/local/bin/docker-entrypoint.sh \
    && sed -i 's/\r//' /usr/local/bin/docker-entrypoint.sh

USER $USER
WORKDIR $HOME

ENTRYPOINT [ "bash", "/usr/local/bin/docker-entrypoint.sh" ]