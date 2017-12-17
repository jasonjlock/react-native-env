FROM node:9.3.0
ADD . /code
WORKDIR /code
RUN npm install
CMD ["node", "server.js"]
