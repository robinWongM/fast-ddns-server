FROM node:latest
WORKDIR /usr/src/app
COPY package*.json ./
RUN yarn --registry="https://registry.npm.taobao.org"
COPY . .
EXPOSE 3000
CMD [ "yarn", "start" ]
