FROM node:23-slim

WORKDIR /api-test-automation

COPY package.json package.json
COPY config.js config.js
COPY tests tests

RUN npm install

ENTRYPOINT [ "npm" ]

# docker run --rm --network=host kvinnika/api-tests npm run greetings greetings_dev