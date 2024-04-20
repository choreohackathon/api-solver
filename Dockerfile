FROM node:latest
ENV API_HOST=0.0.0.0
WORKDIR /app
COPY . .
RUN npm cache clean --force 
RUN npm install
EXPOSE 3000

# Set a non-root user
USER 10014

CMD ["npm", "run", "start"]
