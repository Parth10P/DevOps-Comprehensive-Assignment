FROM node:20-alpine

WORKDIR /app

COPY . .

RUN cd frontend && npm install && npm run build

RUN cd backend && npm install

EXPOSE 5000

CMD [ "node","backend/server.js" ]

