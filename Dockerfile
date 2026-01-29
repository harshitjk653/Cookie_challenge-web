# Use Node.js 18 alpine as base image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# The application runs on port 3000 by default (as per server.js)
EXPOSE 3000

# Command to run the application
CMD ["npm", "start"]
