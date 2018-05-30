FROM node:9

WORKDIR /home/node/app

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global

ENV PATH=$PATH:/home/node/.npm-global/bin

RUN npm i forever -g
RUN npm i sequelize-cli -g

COPY package.json ./
COPY package-lock.json ./
COPY forever/ ./forever/

RUN ls -a

RUN npm install

ADD entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]