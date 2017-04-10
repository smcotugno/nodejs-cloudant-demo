FROM node:6.9.2

# MJC correct below line because Dockerfile in same dir as package.json
# COPY nodejs-cloudant/package.json .
# RUN npm install
# COPY nodejs-cloudant .
# EXPOSE  3000
# CMD node app.js

# below based on above + instruction in https://www.distelli.com/docs/tutorials/build-and-deploy-nodejs-with-docker/
COPY package.json .
RUN npm install
COPY . .
EXPOSE  3000
CMD ["node", "app.js"]
