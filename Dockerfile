FROM node:12.14.1-stretch

LABEL maintainer="admin@particule.io"

USER node

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

ENV PATH=$PATH:/home/node/.npm-global/bin

RUN npm install -g markdown-pdf

ENTRYPOINT ["markdown-pdf"]
