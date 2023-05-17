FROM node
LABEL author="Ashley"
COPY . /var/www
WORKDIR /var/www
RUN npm install
EXPOSE 8080
ENTRYPOINT [ "node", "server.js" ]
