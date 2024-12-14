FROM node:23-slim

WORKDIR /api-test-automation

COPY package.json .
COPY config.js .
COPY tests .

RUN npm install

ENTRYPOINT [ "npm" ]

# docker run --rm --network=host kvinnika/api-tests npm run BOOKS BOOKS_DEV