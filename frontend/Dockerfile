# Use the official Node.js 16 as the base image
FROM node:16

# Set the working directory in the Docker container
WORKDIR /app

# Argument for backend URL
ARG VITE_APP_BACKEND_URL

# Set the environment variable
ENV VITE_APP_BACKEND_URL $VITE_APP_BACKEND_URL

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your frontend application to the Docker container
COPY . .

# Build the project (assuming you may need to build static files for production)
RUN npm run build

# Expose the port that Vite uses
EXPOSE 5173

# Command to start Vite for development
# CMD ["npm", "run", "dev"]
CMD ["npx", "serve", "-s", "dist", "-l", "3000"]