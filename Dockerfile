# pull official base image
FROM node:13.12.0-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install app dependencies
COPY app/package.json ./
COPY app/package-lock.json ./
RUN npm install
RUN npm install typescript @types/node @types/react @types/react-dom @types/jest

# add app
COPY app ./app

# start app
CMD ["npm", "start"]