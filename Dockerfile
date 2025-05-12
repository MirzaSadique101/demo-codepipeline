# # Use official base image
# FROM node:18-alpine

# Use Amazon ECR public Node image instead of Docker Hub
FROM public.ecr.aws/docker/library/node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose port
EXPOSE 3000

# Start app
CMD [ "node", "app.js" ]