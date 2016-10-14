# Dockerfile to create a docker image
FROM  index.tenxcloud.com/efish/ansr:1.0

# Add files to the image
# RUN apk -u add openssh redis subversoin nodejs g++ make python && \
# RUN npm install -g pomelo pm2

RUN apk update && \
	 apk -u add bash g++ make python
RUN npm install -g pomelo
RUN npm install -g pm2

ADD run.sh /


# ADD . /opt/nodejs
# WORKDIR /opt/nodejs

# Expose the container port
EXPOSE 22

# CMD [ "sh", "-c", "echo", "$HOME" ]

# ENTRYPOINT ["node", "index.js"]
ENTRYPOINT ["sh","/run.sh"]