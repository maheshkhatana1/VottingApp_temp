# Use lightweight Node image
FROM node:20-alpine

# Set working directory
WORKDIR /app

# Copy dependency files first (layer caching)
COPY package*.json ./

# Install only production dependencies
RUN npm ci --only=production

# Copy application source
COPY . .

# Expose backend port
EXPOSE 3000

# Run the app
CMD ["node", "server.js"]
