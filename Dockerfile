FROM node:5

# Create app directory
RUN mkdir -p /home/workspace-repo

ADD src /home/workspace-repo

COPY package.json /home/workspace-repo
COPY bower.json /home/workspace-repo
COPY Gulpfile.js /home/workspace-repo

#COPY . /usr/src/app
WORKDIR /home/workspace-repo

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
CMD ["cd /home/workspace-repo"]
CMD ["gulp"]
