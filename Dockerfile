#    Licensed under the Apache License, Version 2.0 (the "License"); you may
#    not use this file except in compliance with the License. You may obtain
#    a copy of the License at
#
#         http://www.apache.org/licenses/LICENSE-2.0
#
#    Unless required by applicable law or agreed to in writing, software
#    distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
#    WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
#    License for the specific language governing permissions and limitations
#    under the License.

FROM alpine:edge
MAINTAINER SFox Lviv <sfox.lviv@gmail.com>

ENV UNO_URL https://raw.githubusercontent.com/dagwieers/unoconv/master/unoconv

ADD convert.sh convert.sh

RUN apk --no-cache add bash mc \
            curl \
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
        && apk del curl \
        && rm -rf /var/cache/apk/*

VOLUME ["/tmp"]

CMD ["/convert.sh"]
