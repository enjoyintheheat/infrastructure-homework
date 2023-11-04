FROM node:18.16.0

WORKDIR /app

COPY . .

RUN yarn install && yarn cache clean
RUN yarn lint
RUN yarn test

CMD [ "yarn", "start" ]