FROM node:10
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install --global gulp-cli bower
# RUN npm install -g yarn
RUN npm install
COPY . .
# RUN yarn
RUN bower install
CMD ["gulp", "dev"]
EXPOSE 80 3000