FROM buildkite/puppeteer

LABEL MAINTAINER="Xudong Cai <fifsky@gmail.com>"

COPY . .

RUN mv simsun.ttf /usr/local/share/fonts/

RUN npm install --production

ENTRYPOINT ["node", "/lib/main.js"]
