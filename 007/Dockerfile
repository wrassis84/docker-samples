FROM    alpine:3.5
# install node
RUN     apk add --no-cache nodejs
# set working directory
WORKDIR /root/chat
# copy project file
COPY    package.json .
# install node packages
RUN     npm set progress=false && \
        npm config set depth 0 && \
        npm install
# copy app files
COPY    . .
# run linter, setup and tests
CMD     npm run lint && npm setup && npm run test
