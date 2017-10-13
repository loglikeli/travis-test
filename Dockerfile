FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y curl git
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash
RUN apt-get install -y nodejs
RUN apt-get install python -y

COPY ./ ./
RUN npm install
CMD ["npm", "run", "test"]