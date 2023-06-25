# template dasar dari image node:14.21-alpine
FROM node:14.21-alpine 

# environment variable
ENV PORT=3001
ENV AMQP_URL="amqp://localhost:5672"

# menetapkan working directory
WORKDIR /app

# meng-copy semua file di direktori Dockerfile berada dan mem-paste-kan ke image yang sedang di-build
COPY . . 

# menjalankan perintah "npm i" untuk menginstal dependency saat mem-build image
RUN npm i

# port yang di-ekspose 
EXPOSE $PORT

# perintah yang dijalankan saat build container
CMD ["npm", "run", "start"]