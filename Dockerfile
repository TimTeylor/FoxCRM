FROM node:17.3.0-alpine AS build

WORKDIR /app
COPY package*.json .
EXPOSE 5000

FROM build as production
ENV NODE_ENV=production
RUN npm ci
COPY . .
CMD ["node", "app.js"]

FROM build as dev
ENV NODE_ENV=development
RUN npm install
COPY . .
CMD ["npm", "run", "dev"]