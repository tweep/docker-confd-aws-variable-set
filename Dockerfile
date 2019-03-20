FROM ubuntu:16.04
RUN groupadd -g 2000 ugroup
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g ugroup -G sudo -u 1000 ubuntu

ENV AWS_ACCESS_KEY="aws_access_key_not_set" 
ENV AWS_SECRET_ACCESS_KEY="aws_secret_access_key_not_set" 
ENV AWS_SESSION_TOKEN="aws_session_token_not_set" 


# 
#  Install confd to process parameters 
#  

ADD https://github.com/kelseyhightower/confd/releases/download/v0.10.0/confd-0.10.0-linux-amd64 /usr/local/bin/confd 
RUN chmod +x /usr/local/bin/confd 
COPY config/confd /etc/confd  

#
# Perform steps as user UBUNTU 
#
USER ubuntu
WORKDIR /home/ubuntu
RUN mkdir -p /home/ubuntu/.aws 
COPY start.sh /home/ubuntu/

CMD [ ""bin/bash" , "/home/ubuntu/start.sh"  ]


