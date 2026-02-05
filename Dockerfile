# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Create app directory
WORKDIR /app

# Copy package manifest files
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port your app runs on
EXPOSE 3000

# Start the app
CMD ["node", "server.js"]
