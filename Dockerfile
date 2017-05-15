FROM node:5

# Create app directory
RUN mkdir -p /home/workspace-repo

ADD . /home/workspace-repo

WORKDIR /home/workspace-repo
	
ENTRYPOINT ["/home/workspace-repo"]

# If you have native dependencies, you'll need extra tools
#RUN apk add --no-cache make gcc g++ python

# If you need npm, don't use a base tag
RUN rm -rf node_modules
RUN rm -rf bower_components
RUN npm install 
RUN npm install -g bower 
RUN bower install --allow-root
RUN npm install -g gulp-cli
RUN npm install -g gulp


EXPOSE 3000

#ENTRYPOINT ["/home/workspace-repo/node_modules/.bin/gulp"]
ADD build.sh /home/workspace-repo

CMD ["/home/workspace-repo/build.sh"]
