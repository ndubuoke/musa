FROM node:alpine

WORKDIR /app
COPY package.json .

ARG PUPPETEER_SKIP_DOWNLOAD=true

RUN npm install -g npm@latest
RUN npm install

COPY . .

CMD ["npm", "start"]