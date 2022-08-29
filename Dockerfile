FROM node:10.13
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --global gulp-cli bower
# RUN npm install -g yarn
# RUN npm install
COPY . .
RUN yarn
EXPOSE 8080
RUN bower install
CMD ["gulp", "dev"]
