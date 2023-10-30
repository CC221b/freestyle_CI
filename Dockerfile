#Uses the Node.js 18.0.0 image as the base image
FROM node:18.0.0

#Sets the working directory of the container
WORKDIR /usr/src/app

#Copies the package.json and package-lock.json files to the working directory
COPY package*.json ./

#Installs the packages in the package.json file
RUN npm install

#Installs the handlebars package as a development dependency
RUN npm i -D handlebars@4.5.0

#Copies all files and directories from the current directory to the working directory
COPY . .

#Opens port 4000 to the outside world
EXPOSE 4000

#Defines the command that will be executed when the container starts
CMD ["node", "index.js"]