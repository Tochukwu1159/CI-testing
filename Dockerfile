FROM node:14-alpine

WORKDIR /the/workdir/path

COPY ./package.json .

RUN yarn

COPY . .

RUN yarn tsc

CMD ["yarn", "start"]