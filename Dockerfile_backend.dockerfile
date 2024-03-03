# Use the official Node.js image as the base image for backend
FROM node:20.0.0-alpine AS backend

# Set the working directory for backend
WORKDIR /app/quirknotes/backend

# Copy backend package files
COPY quirknotes/backend/package*.json ./

# Install backend dependencies
RUN npm install

# Copy backend source code
COPY quirknotes/backend ./

# Expose port 3000 to serve the frontend
EXPOSE 4000

# Command to start npm and serve backend
CMD ["npm", "run", "dev"]