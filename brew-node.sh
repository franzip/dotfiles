#!/usr/bin/env bash

brew install yarn

# Languages
npm install -g less
npm install -g coffee-script
npm install -g typescript
npm install -g typings
npm install -g jsx
npm install -g elm
# Linters
npm install -g eslint
npm install -g babel-eslint
npm install -g tslint
npm install -g csslint
npm install -g sasslint
npm install -g scsslint
# Webpack
npm install -g webpack-cli
npm install -g webpack-dev-server
# Babel
npm install -g babel
npm install -g babel-cli
npm install -g mocha
# Utils
npm install -g nodemon
npm install -g prettyjson
npm install -g node-inspector
npm install -g localtunnel
npm install -g npm-check-updates
# Meteor
curl https://install.meteor.com/ | sh
# Generators
npm install -g yo

nvm install --lts
nvm alias default node
