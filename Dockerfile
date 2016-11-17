# Set base image
FROM node:latest
MAINTAINER Francesco Benigno <francesco.benigno@sparkfabrik.com>

# Set variables
ENV PORT=8000

# Install Git
RUN apt-get update && apt-get install -y git

# Clone reveal.js repository
RUN git clone https://github.com/hakimel/reveal.js.git

# Enter reveal.js directory
WORKDIR /reveal.js

# Install reveal.js
RUN npm install

# Expose port 8000
EXPOSE 8000

# Let's go
CMD ["npm", "start"]