# Base Package
FROM node:14


# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY ./client/package*.json ./

RUN npm install

#RUN yarn install

# Bundle app source
COPY ./client/ .

# Initiate npm start
CMD [ "npm", "run-script", "start_docker_dev" ]