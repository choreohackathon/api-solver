FROM node:16-alpine
RUN addgroup ticxar
RUN adduser -G ticxar,ticxar -u 10000 -h /home/ticxar ticxar
USER ticxar
ENV API_HOST=0.0.0.0
WORKDIR /app
COPY . .

RUN npm install
EXPOSE 3000

CMD ["npm", "run", "start"]
