# Pulls the official image
FROM    node:13.12.0-alpine AS builder

# Sets the working dir
WORKDIR /app

# Add `/app/node_modules/.bin` to $PATH
ENV     PATH /app/node_modules/.bin:$PATH

# Install all the dependencies
COPY    package.json ./
# Necessary dependency for production build
RUN     npm install babel-polyfill    
# Only production dependencies
RUN     npm install --only-production

# Add the App Code
COPY    . ./

# Script that starts the app
RUN     npm run build

# ---- Production build ----
FROM    nginx
COPY    nginx.conf /etc/nginx/conf.d/default.conf
COPY    --from=builder /app/build /usr/share/nginx/html
