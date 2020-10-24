FROM node:12.16.2 as build-deps

WORKDIR /usr/src/app

COPY package.json yarn.lock ./

RUN yarn && yarn browserslist --update-db

CMD ["yarn", "run", "start"]
