FROM node:14

WORKDIR /usr/src/app


COPY ./backend/package*.json ./
RUN npm install

COPY ./backend/. .
RUN npm run build
EXPOSE 4000
CMD [ "node", "dist/server.js" ]