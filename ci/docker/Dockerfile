FROM mhart/alpine-node:base-6

ADD myworkspace-repo /home/myworksapce-repo/
WORKDIR /home/myworkspace-repo/
	
# If you have native dependencies, you'll need extra tools
#RUN apk add --no-cache make gcc g++ python

# If you need npm, don't use a base tag
RUN npm install --allow-root
RUN npm install -g bower
RUN bower install --allow-root
RUN npm install -g gulp-cli --allow-root
RUN npm install -g gulp --allow-root

EXPOSE 3000

CMD ["node", "index.js"]
