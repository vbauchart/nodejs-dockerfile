FROM alpine:latest

RUN mkdir /var/node/

WORKDIR /var/node/

COPY ./app.js ./

RUN apk update

RUN apk add nodejs npm

RUN apk cache clean

RUN npm init -y

RUN npm install express

RUN npm cache clean 

EXPOSE 3000

ENTRYPOINT [ "node" ]

CMD [ "app.js" ]
