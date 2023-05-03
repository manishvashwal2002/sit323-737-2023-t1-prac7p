# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any packages specified in package.json
RUN npm install

# Expose port 9556
EXPOSE 9886

# Define the command to run the webapp
CMD [ "npm", "start" ]
