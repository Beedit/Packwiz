FROM node:25.9.0-alpine as base
WORKDIR /app

ENV NODE_PATH=./build
ENV NODE_ENV=production

COPY . .

RUN npm ci
RUN npm run build

EXPOSE 8800

RUN chown -R node /app

USER node

CMD ["npm", "run", "start"]