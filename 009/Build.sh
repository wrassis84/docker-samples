######## ENVIRONMENT ###########################################################

#!/usr/bin/env bash

######## ABOUT #################################################################

# Repository      : https://github.com/wrassis84/docker-samples/009
# Author          : William Ramos de Assis Rezende
# Maintainer      : William Ramos de Assis Rezende
#
# DataTex.sh      : Builds a sample docker image using multi-stages on
#                   traditional way.
# Requirements    : docker.
# Usage           : ./Build.sh

######## TESTING ENVIRONMENT ###################################################
  
# GNU bash, version 5.1.16(1)-release (x86_64-pc-linux-gnu)

######## MAIN CODE - START #####################################################
#
# git clone https://github.com/alexellis/href-counter.git
echo Building alexellis2/href-counter:build
docker image build --build-arg https_proxy=$HTTPS_PROXY \
                   --build-arg=$HTTPS_PROXY             \
                   -t alexellis2/href-counter:build . -f Dockerfile.build
docker container create --name extract alexellis2/href-counter/app ./app
docker container rm -f extract
echo Building alexellis2/href-counter:latest
docker image build --no-cache -t alexellis2/href-counter:latest .
rm ./app
######## MAIN CODE - END #######################################################
