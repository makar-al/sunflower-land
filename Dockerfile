FROM node:lts

USER node
ENV HOME=/home/node \
  SHELL=/bin/bash \
  NPM_CONFIG_PREFIX=/home/node/.npm-global \
  PATH=$PATH:/home/node/.npm-global/bin

RUN mkdir -p \
  ~/sunflower-land \
  ~/.npm-global \
  ~/.cache/yarn

WORKDIR /home/node/sunflower-land
COPY --chown=node:node package.json yarn.lock* ./

# RUN npm install <some global deps> -g