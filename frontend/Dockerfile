# Use the official Node.js 16 as the base image
FROM node:16

# Set the working directory in the Docker container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy your .env.production file to the container to use during the build
# Rename it to .env to be picked up by Vite or your application automatically
COPY .env .env

# Copy the rest of your frontend application to the Docker container
COPY . .

# Build the project (assuming you may need to build static files for production)
RUN npm run build

# Expose the port that Vite uses
EXPOSE 5173

# Command to start Vite for development
# CMD ["npm", "run", "dev"]
CMD ["npx", "serve", "-s", "dist", "-l", "3000"]