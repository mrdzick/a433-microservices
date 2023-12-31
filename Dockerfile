# Select base image
FROM node:18.19.0-alpine

# Set current working directory
WORKDIR /app

# Copy all files of current directory into working directory of image
COPY . .

# Install all packages that needed by app and build the app
RUN npm ci

# Expose container port
EXPOSE 3000

# Set npm start as command to be triggered when container started
CMD [ "npm", "start" ]