#FROM mhart/alpine-node:base-6
FROM node:boron

# Create app directory
RUN mkdir -p /usr/src/app

ADD /src /usr/src/app

COPY /package.json /usr/src/app
COPY /bower.json /usr/src/app
COPY /Gulpfile.js /usr/src/app

#COPY . /usr/src/app
WORKDIR /usr/src/app

#ENTRYPOINT ["/bin/sh -c"]	

# If you have native dependencies, you'll need extra tools
#RUN apk add --no-cache make gcc g++ python

# If you need npm, don't use a base tag
RUN rm -rf node_modules
RUN rm -rf bower_components
RUN npm install 
RUN npm install -g bower 
#RUN bower install 
RUN npm install -g gulp-cli
RUN npm install -g gulp

EXPOSE 3000
CMD ["cd /usr/src/app"]
CMD ["gulp"]
