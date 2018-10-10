FROM node:8-alpine

ENV MOUNTEBANK_VERSION 1.15.0
RUN npm install --global mountebank@${MOUNTEBANK_VERSION} --production

ENTRYPOINT ["env"]
CMD exec mb --port ${MOUNTEBANK_PORT_ADMIN:-2525} start
