FROM maven:3.3.9

# fetch latest repos for node
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash

RUN    apt-get update \
    && apt-get install --always-yes=true python jq nodejs

# allow bower to run as root
RUN echo '{ "allow_root": true }' >> /root/.bowerrc

# install awscli
RUN    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
    && python get-pip.py \
    && pip install awscli --upgrade \
    && export PATH=~/.local/bin:$PATH
