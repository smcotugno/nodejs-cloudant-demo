FROM node:6.9.2

COPY package.json .
RUN npm install
COPY . .
EXPOSE  3000
CMD ["node", "app.js"]
