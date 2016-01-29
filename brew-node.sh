#!/usr/bin/env bash

npm cache clean
npm install node-gyp -g
npm install npm -g
npm update -g

# basic
npm install -g grunt-cli grunt bower gulp express express-generator jasmine karma mocha browserify

# ST3 deps
npm install -g coffee-script jshint less csslint typescript sasslint scsslint coffeelint

# stuff
npm install -g backbone nodemon async socket.io mongoose hapi request forever mkdirp

npm install -g cordova phonegap ionic

npm install -g lodash loopback pm2 debug commander moment q passport redis knockout jsx

npm install -g react nodemailer minimist chalk colors underscore jade bluebird sails

# Meteor.js
curl https://install.meteor.com/ | sh

npm install -g mean-cli ember-cli

# yo

npm install -g yo
npm install -g generator-angular generator-angular-fullstack generator-backbone
npm install -g generator-karma generator-mocha generator-gulp-webapp generator-polymer
npm install -g generator-node generator-bootstrap generator-jquery generator-mean
npm install -g generator-webapp generator-meteor generator-backbone-mocha

# nodeschool.io ftw
npm install -g javascripting learnyounode git-it how-to-npm scope-chains-closures stream-adventure
npm install -g functional-javascript-workshop shader-school levelmeup bytewiser
npm install -g expressworks bug-clinic makemehapi browserify-adventure promise-it-wont-hurt
npm install -g introtowebgl async-you count-to-6 nodebot-workshop kick-off-koa
npm install -g goingnative lololodash planetproto learnyoucouchdb webgl-workshop
npm install -g esnext-generation learn-generators test-anything learnyoureact
npm install -g tower-of-babel perfschool learnyoumongo web-audio-school regex-adventure
npm install -g torrential learn-sass thinking-in-react pattern-lab-workshop node-debug-school
