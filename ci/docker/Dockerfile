FROM mhart/alpine-node:base-6

MAINTAINER Praneeth Buggaveeti 

WORKDIR myworkspace/

RUN npm install 
RUN npm install -g bower
RUN bower install --allow-root
RUN npm install -g gulp-cli
RUN npm install -g gulp

EXPOSE 8000:80

CMD ["gulp"]

