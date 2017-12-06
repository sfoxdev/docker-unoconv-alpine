FROM alpine:edge
MAINTAINER SFoxDev <admin@sfoxdev.com>

ENV UNO_URL https://raw.githubusercontent.com/dagwieers/unoconv/master/unoconv

ADD scripts /

RUN apk --no-cache add bash mc \
            curl \
            util-linux \
            libreoffice-common \
            libreoffice-writer \
            ttf-droid-nonlatin \
            ttf-droid \
            ttf-dejavu \
            ttf-freefont \
            ttf-liberation \
        && curl -Ls $UNO_URL -o /usr/local/bin/unoconv \
        && chmod +x /usr/local/bin/unoconv \
        && ln -s /usr/bin/python3 /usr/bin/python \
        && chmod +x convert.sh \
        && chmod +x timer.sh \
        && apk del curl \
        && rm -rf /var/cache/apk/*

VOLUME ["/tmp"]

CMD ["/convert.sh"]
