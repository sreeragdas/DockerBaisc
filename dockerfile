#build this image from specified image
FROM node:19-alpine


#copy files from local system and paste the files in container
#copy package.json and paste the package.json to /app/
#we can copy both single file as well as folder
COPY package.json /app/
COPY src /app/

#WORKDIR work similer to cd , set the working directory
WORKDIR /app

#run command is used to run a command in container
RUN npm install

#instruction that is to be executed when docker container start 
#there can be only one cmd command in whole application
# the actuall command is node app.js , we have to break the command and send it like a parameter
#will display message on docker cmd
# CMD [ "node" , "app.js" ]


ENTRYPOINT [ "node" , "app.js" ]