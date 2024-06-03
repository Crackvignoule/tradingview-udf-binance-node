FROM node:12.0

WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY src ./

# Expose port 80 for HTTP
EXPOSE 80

# Command to run the application
CMD ["node", "app.js"]
