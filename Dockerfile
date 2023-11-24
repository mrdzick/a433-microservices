# Select base image
FROM node:14.0

# Set current working directory
WORKDIR /app

# Copy all files of current directory into working directory of image
COPY . .

# Set environment variables
ENV NODE_ENV=production DB_HOST=item-db

# Install all packages that needed by app and build the app
RUN npm install --production --unsafe-perm && npm run build

# Expose container port
EXPOSE 8080

# Set npm start as command to be triggered when container started
CMD [ "npm", "start" ]