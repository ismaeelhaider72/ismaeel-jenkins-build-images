                                                                                  Dockerfile                                                                                               FROM ubuntu:20.04
RUN apt-get update
WORKDIR /home
RUN apt-get install curl -y
RUN  curl -sL https://deb.nodesource.com/setup_12.x | bash
RUN  apt-get install -y nodejs
COPY index.js /home/
COPY package.json /home/
RUN cd /home && npm install
EXPOSE 4600
CMD ["node","index.js"]
