FROM node:18-alpine

# Set working directory
WORKDIR /frontend

# Copy package.json and package-lock.json first (for caching npm install)
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port used by the frontend (default React: 3000, Vite: 5173)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]