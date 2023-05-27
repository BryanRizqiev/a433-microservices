# Pull image nodejs versi 14
FROM node:14.21.3-bullseye-slim

# Mendefinisikan environtment 
ENV NODE_ENV=production DB_HOST=item-db

# Menggunakan Working Directory di /app
WORKDIR /app

# Meng-copy seluruh directory di . ke . container yaitu /app pada container karena WORKDIR didefinisikan di /app
COPY . .

# Menginstal dependensi project dalam mode production dan build project
RUN npm install --production --unsafe-perm && npm run build

# Meng-ekspose port 8080 container
EXPOSE 8080

# Menjalankan project
CMD ["npm", "start"]