FROM node:14
WORKDIR /app
COPY package*.json ./
ENV MOVIE_CATALOG_SERVICE=http://172.17.0.2:8080
RUN npm install
COPY . .
ENV NODE_ENV=production
EXPOSE 3000
RUN npm run build
CMD ["npm","start"]
