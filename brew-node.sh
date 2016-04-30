#!/usr/bin/env bash

npm cache clean
npm install node-gyp -g
npm install npm -g
npm update -g

# basic
npm install -g grunt-cli grunt bower gulp express express-generator jasmine karma mocha browserify

# ST3 deps
npm install -g coffee-script jshint jsxhint eslint less csslint typescript sasslint scsslint coffeelint

# stuff
npm install -g backbone nodemon async socket.io mongoose hapi request forever mkdirp

npm install -g cordova phonegap ionic

npm install -g lodash loopback pm2 debug commander moment q passport redis knockout jsx

npm install -g nodemailer minimist chalk colors underscore jade bluebird sails

npm install -g mean-cli ember-cli

npm install -g phantomjs prettyjson node-inspector

npm install -g vue vue-cli webpack jsx react babel babel-cli

# Meteor.js
curl https://install.meteor.com/ | sh

# yo
npm install -g yo
npm install -g generator-angular generator-angular-fullstack generator-backbone
npm install -g generator-karma generator-mocha generator-gulp-webapp generator-polymer
npm install -g generator-node generator-bootstrap generator-jquery generator-mean
npm install -g generator-webapp generator-meteor generator-backbone-mocha
