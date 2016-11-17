# Set base image
FROM node:7.1.0
MAINTAINER Francesco Benigno <francesco.benigno@sparkfabrik.com>

# Set variables
ENV REVEALJS_VERSION 3.3.0
ENV REVEALJS_INSTALL_DIR /srv/reveal.js

# Get reveal.js from Github repository
RUN cd /tmp \
    && curl -SLO "https://github.com/hakimel/reveal.js/archive/$REVEALJS_VERSION.tar.gz" \
    && mkdir -p $REVEALJS_INSTALL_DIR \
    && tar -xzf "$REVEALJS_VERSION.tar.gz" -C $REVEALJS_INSTALL_DIR --strip-components=1 \
    && rm "$REVEALJS_VERSION.tar.gz"

# Enter reveal.js directory
WORKDIR $REVEALJS_INSTALL_DIR

# Install reveal.js
RUN npm install

# Expose port 8000
EXPOSE 8000

# Let's go
CMD ["npm", "start"]