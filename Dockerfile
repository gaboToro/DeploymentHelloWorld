# Lightweight Node.js base image
FROM node:20-slim

# Create and set the working directory inside the container
WORKDIR /usr/src/app

# Copy project definition files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the application source code
COPY . .

# Expose the port used by the application (must match server.js)
EXPOSE 3000

# Command to run the application
CMD [ "npm", "start" ]
