# Use official Node.js image as base
FROM node:18

# Set working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json
COPY package.json .

# Install dependencies
RUN npm install

# Copy all files from the project directory to /app in the container
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run the app
CMD ["node", "server.js"]