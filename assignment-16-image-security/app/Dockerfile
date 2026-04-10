FROM node:18-alpine

WORKDIR /app

COPY . .

RUN echo "Tampered Image - Security Broken" > index.js

CMD ["node", "index.js"]
