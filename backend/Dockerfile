# Use the official Node.js 16 as the base image
FROM node:16

# Set the working directory in the Docker container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Install MySQL client
RUN apt-get update && apt-get install -y default-mysql-client

# Copy the rest of your backend application to the Docker container
COPY . .

# Expose port 3000 to the outside once the container has launched
EXPOSE 8800

# Command to run the application
CMD ["node", "index.js"]
