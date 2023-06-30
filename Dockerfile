FROM node:current-buster
WORKDIR /app
RUN npm -g upgrade npm
RUN npm -g install zkapp-cli
#Set the command to keep the container running
CMD tail -f /dev/null
