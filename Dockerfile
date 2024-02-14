FROM node:21-alpine

RUN mkdir -p /home/node/app/node_modules && chown -R node:node /home/node/app
WORKDIR /home/node/app
RUN npm install -g y-websocket yjs
EXPOSE 1234
ENV HOST=0.0.0.0
ENV PORT=1234
CMD [ "npx", "y-websocket" ]
