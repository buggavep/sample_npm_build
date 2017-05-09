FROM node:alpine
MAINTAINER Praneeth Buggaveeti 

RUN apt-get update
RUN apk add --no-cache make gcc g++ python
RUN npm install -g node-sass

WORKDIR /home/myworkspace-repo/
RUN myworkspace-repo/
RUN rm -rf node_modules
RUN rm -rf bower_components
RUN npm install
RUN npm install -g bower --allow-root
RUN bower install --allow-root
RUN npm install -g gulp-cli 
RUN npm install -g gulp
RUN gulp

