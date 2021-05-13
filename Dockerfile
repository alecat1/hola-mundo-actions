FROM node
WORKDIR /actions
COPY . .
RUN npm install
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
