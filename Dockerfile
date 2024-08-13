FROM node:19

WORKDIR /usr/src/http

COPY package*.json .

RUN npm install --save-dev

COPY . .

EXPOSE 3442

RUN npm run build && npm start

CMD [ "node", "./dist/index.js" ]
