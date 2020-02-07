#!/bin/bash -
read -p "Enter the application name [$HEROKU_APP]: " appName 
appName=${appName:-$HEROKU_APP}
heroku plugins:install plugin:builds
heroku builds:create --source-url https://github.com/jflamy/owlcms4-heroku/tree/4.4.6-beta1/owlcms4-heroku.tar.gz
