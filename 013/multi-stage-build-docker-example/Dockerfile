FROM node:14.17.0-alpine
LABEL stage="builder"
RUN apk update && apk add bash
WORKDIR /app
COPY . /app
RUN addgroup -S container-group && adduser -S container-user -G container-group
RUN chmod a+w .
USER container-user
RUN [ "yarn" ]
RUN [ "yarn", "build" ]
RUN [ "rm", "-rf", "node_modules" ]
RUN [ "yarn", "--production" ]
CMD [ "node", "dist/src/index.js" ]
