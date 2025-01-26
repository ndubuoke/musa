FROM node:alpine

WORKDIR /app

ARG PUPPETEER_SKIP_DOWNLOAD=true

RUN npm install -g npm@latest
RUN npm install

COPY . .

CMD ["npm", "start"]