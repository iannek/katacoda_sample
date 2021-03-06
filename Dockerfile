FROM node:slim

# update all
RUN apt-get update && apt-get install -y --no-install-recommends

# make work directory
RUN mkdir /workspace
WORKDIR /workspace

# install global npm modules
RUN npm install katacoda-cli --global

# Clean up
RUN apt-get autoremove -y \
    && apt-get clean -y