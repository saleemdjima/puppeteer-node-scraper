FROM ghcr.io/puppeteer/puppeteer:latest

ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/google-chrome-stable


WORKDIR /usr/src/app

COPY package*.json ./
USER root
RUN npm ci
COPY . . 
CMD ["node", "index.js"]

EXPOSE 4000