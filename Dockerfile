#Node JS backend container 
FROM node
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
ENV PORT 3000
EXPOSE $PORT
CMD ["npm", "run", "start"]

#React JS frontend container
FROM React
WORKDIR /app
COPY client/package.json .
RUN npm install
COPY /client .
ENV PORT 3002
EXPOSE $PORT
CMD ["npm", "start"]
