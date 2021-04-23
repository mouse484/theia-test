FROM gitpod/workspace-full

RUN sudo apt-get update \
  sudo apt-get install libx11-dev libxkbfile-dev

ENV SHELL=/bin/bash

ENV NODE_VERSION="12.14.1"
ENV YARN_VERSION="1.7.0"

RUN bash -c ". .nvm/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm use $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && npm install -g yarn@$YARN_VERSION"
ENV PATH=$HOME/.nvm/versions/node/v${NODE_VERSION}/bin:$PATH
