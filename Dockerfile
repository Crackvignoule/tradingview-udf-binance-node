FROM node:12.0

WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy source code
COPY src ./

# Copy SSL certificate and key
COPY server.crt /etc/ssl/certs/server.crt
COPY server.key /etc/ssl/private/server.key

# Expose port 443 for HTTPS
EXPOSE 443

# Command to run the application
CMD ["node", "app.js"]
