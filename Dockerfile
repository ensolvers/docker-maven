FROM maven:3.3.9

RUN    apt-get update \
    && apt-get install --always-yes=true python jq nodejs npm

# fix node
RUN ln -s /usr/bin/nodejs /usr/bin/node

# install bower
RUN npm install -g bower

# install awscli
RUN    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
    && python get-pip.py \
    && pip install awscli --upgrade \
    && export PATH=~/.local/bin:$PATH
