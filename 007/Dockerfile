FROM       alpine:3.5
# install node
RUN        apk add --no-cache nodejs tini
# set working directory
WORKDIR    /root/chat
# copy project file
COPY       package.json .
# install node packages
RUN        npm set progress=false &&        \
           npm config set depth 0 &&        \
           npm install --only=production && \
           npm cache clean
# copy app files
COPY    . .
# set tini as entrypoint
ENTRYPOINT ["/sbin/tini", "--"]
# application server port
EXPOSE     5000
# default run command
CMD        npm run start
