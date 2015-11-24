#!/usr/bin/env bash

npm cache clean
npm install node-gyp -g
npm install npm -g
npm update -g

npm install -g grunt-cli grunt bower yo gulp express jasmine karma mocha browserify react

# ST3 deps
npm install -g coffee-script jshint less csslint typescript sass-lint scss_lint

npm install -g gulp backbone nodemon async socket.io mongoose hapi request underscore jade

npm install -g lodash pm2 commander moment q passport redis nodemailer minimist

# Meteor.js
curl https://install.meteor.com/ | sh

# MEAN cli
npm install -g mean-cli

# yo generators

npm install -g generator-angular generator-angular-fullstack generator-backbone
npm install -g generator-karma generator-mocha generator-gulp-webapp generator-polymer
npm install -g generator-node generator-bootstrap generator-jquery generator-mean
npm install -g generator-webapp generator-meteor


# nodeschool.io ftw
npm install -g javascripting learnyounode git-it how-to-npm scope-chains-closures stream-adventure
npm install -g functional-javascript-workshop shader-school levelmeup bytewiser
npm install -g expressworks bug-clinic makemehapi browserify-adventure promise-it-wont-hurt
npm install -g introtowebgl async-you count-to-6 nodebot-workshop kick-off-koa
npm install -g goingnative lololodash planetproto learnyoucouchdb webgl-workshop
npm install -g esnext-generation learn-generators test-anything learnyoureact
npm install -g tower-of-babel perfschool learnyoumongo web-audio-school regex-adventure
npm install -g torrential learn-sass thinking-in-react pattern-lab-workshop node-debug-school
