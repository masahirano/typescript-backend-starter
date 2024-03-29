FROM node:16-alpine as base

WORKDIR /app
COPY . /app
EXPOSE 3000

# Add production state when needed
#
# FROM base as production
#

FROM base as development

ENV NODE_ENV=development
RUN apk add curl git
RUN npm install
CMD ["npm", "run", "start:dev"]
