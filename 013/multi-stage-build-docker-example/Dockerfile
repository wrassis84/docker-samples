# Stage 1: Build the base code.
FROM node:14.17.0-alpine AS BuildStage
LABEL stage="builder"
RUN apk update && apk add bash
WORKDIR /app
COPY . /app
RUN [ "yarn" ]
RUN [ "yarn", "build" ]
RUN [ "rm", "-rf", "node_modules" ]
RUN [ "yarn", "--production" ]

# Stage 2: Run build container code using the code from BuildStage phase.
FROM node:14.17.0-alpine
LABEL author="Thiago Lopes da Silva <thiagoolsilva@gmail.com>"
RUN apk update && apk add bash
WORKDIR /app
RUN addgroup -S container-group && adduser -S container-user -G container-group
USER container-user
COPY --from=BuildStage /app/dist/ /app/
COPY --from=BuildStage /app/node_modules/ /app/node_modules
CMD [ "node", "src/index.js" ]
