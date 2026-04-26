# Use alpine as a base and then work in /app.
FROM node:25.9.0-alpine as base
WORKDIR /app

# Copy everything
COPY . .

# Clean install and build
RUN npm ci
RUN npm run build

# Use port 8800
EXPOSE 8800

# chown the files that user node needs to have access to and switch user to node
RUN chown -R node /app
USER node

# run the server
CMD ["npm", "run", "start"]