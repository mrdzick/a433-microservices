# Select base image
FROM node:14.21.3-alpine

# Label for connect the repository to package
LABEL org.opencontainers.image.source https://github.com/mrdzick/a433-microservices

# Set current working directory
WORKDIR /app

# Copy all files of current directory into working directory of image
COPY . .

# Set environment variables
ENV NODE_ENV=production DB_HOST=item-db

# Expose container port
EXPOSE 8080

# Install all packages that needed by app and build the app
RUN npm install --production --unsafe-perm && npm run build

# Set npm start as command to be triggered when container started
CMD [ "npm", "start" ]