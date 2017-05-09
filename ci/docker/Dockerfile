FROM linux

MAINTAINER Praneeth Buggaveeti 

RUN npm install 
RUN npm install -g bower
RUN bower install --allow-root
RUN npm install -g gulp-cli
RUN npm install -g gulp

WORKDIR /myworkspace

EXPOSE 8000:80

CMD ["gulp"]

