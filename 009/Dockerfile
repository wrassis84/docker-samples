# Copies in our code and runs NPM install
FROM    node:latest AS builder
WORKDIR /usr/src/app
COPY    package* ./
COPY    src/ src/
RUN     ["npm", "install"]

# Lints Code
FROM    node:latest AS linting
WORKDIR /usr/src/app
COPY    --from=builder /usr/src/app/src .
RUN     ["npm", "lint"]

# Gets Sonarqube Scanner from Dockerhub and runs it
FROM    newtmitch/sonar-scanner:latest AS sonarqube
COPY    --from=builder /usr/src/app/src /root/src

# Run Unit Tests
FROM    node:latest AS unit-tests
WORKDIR /usr/src/app
COPY    --from=builder /usr/src/app .
RUN     ["npm", "test"]

# Runs Accessibility Tests
FROM    node:latest AS access-tests
WORKDIR /usr/src/app
COPY    --from=builder /usr/src/app .
RUN     ["npm", "access-tests"]

# Starts and Serves Web Page
FROM    node:latest AS serve
WORKDIR /usr/src/app
COPY    --from=builder /usr/src/app/dest ./
COPY    --from=builder /usr/src/app/package* ./
RUN     ["npm", "start"]
