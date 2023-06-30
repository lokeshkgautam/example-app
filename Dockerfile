FROM node:18.7.0

COPY . .

RUN npm install

EXPOSE 8000

CMD npm start
