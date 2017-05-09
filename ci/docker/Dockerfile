FROM dockerfile/nodejs

MAINTAINER Praneeth Buggaveeti 

RUN npm install 
RUN npm install -g bower
RUN bower install --allow-root
RUN npm install -g gulp-cli
RUN npm install -g gulp

WORKDIR /myworkspace
 
CMD ["gulp"]

