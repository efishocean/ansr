# Dockerfile to create a docker image
FROM  index.tenxcloud.com/efish/ansr:1.0

# Add files to the image
# RUN apk update && \
#	apk -u add openssh redis subversoin nodejs g++ make python && \

ADD run.sh /

# ADD . /opt/nodejs
# WORKDIR /opt/nodejs

# Expose the container port
EXPOSE 22

# CMD [ "sh", "-c", "echo", "$HOME" ]

# ENTRYPOINT ["node", "index.js"]
ENTRYPOINT ["sh","/run.sh"]