FROM node:lts

WORKDIR /app

COPY package.json .
COPY yarn.lock .

RUN yarn

COPY . .

RUN yarn build

RUN yarn global add @medusajs/medusa-cli

ENTRYPOINT ["medusa", "develop"]