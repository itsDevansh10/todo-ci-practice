
# Use Node.js 18 on lightweight Alpine Linux
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package files first
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the remaining project files
COPY . .

# Document the application port
EXPOSE 5000

# Start the application
CMD ["npm", "start"]
