FROM maven:3.3.9

RUN    apt-get update \
    && apt-get install --always-yes=true python jq

# install awscli
RUN    curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py \
    && python get-pip.py \
    && pip install awscli --upgrade \
    && export PATH=~/.local/bin:$PATH
