FROM mhart/alpine-node:base-6

ADD src /home

COPY package.json /home
COPY bower.json /home
COPY Gulpfile.js /home

WORKDIR /home
	
# If you have native dependencies, you'll need extra tools
#RUN apk add --no-cache make gcc g++ python

# If you need npm, don't use a base tag
RUN npm install 
RUN npm install -g bower
RUN bower install 
RUN npm install -g gulp-cli
RUN npm install -g gulp

EXPOSE 3000

CMD ["gulp"]
