FROM node:10-alpine
LABEL maintainer="alican.kustemur@gmail.com"

ENV NODE_ENV production

RUN apk add --update \
    curl \
    jq \
    bash \
    && rm -rf /var/cache/apk/*

RUN npm install elasticdump@6.2.2 -g

COPY elastic-transfer.sh /usr/bin/elastic-transfer

RUN chmod 777 /usr/bin/elastic-transfer

ENTRYPOINT [ "/bin/bash","elastic-transfer" ]