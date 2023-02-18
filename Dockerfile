FROM node:14-alpine
RUN apk update && apk upgrade --no-cache
RUN apk add npm && apk add git
RUN git clone https://github.com/nodejs/nodejs.org.git
WORKDIR /nodejs.org
RUN npm install 
CMD [ "npm", "start" ] 
EXPOSE 8080