# Menggunakan base image Node.js versi 14
FROM node:14

# Menentukan working directory
WORKDIR /app

# Meng-copy seluruh source code ke working directory di container
COPY . /app

# Menentukkan environment dalam mode production dan menggunakan item-db sebagai database host
ENV NODE_ENV=production DB_HOST=item-db

# Menginstal dependencies untuk production dan melakukan build aplikasi
RUN npm install --production --unsafe-perm 
RUN npm run build

# Mengekspos port 8080
EXPOSE 8080

# Menjalankan aplikasi dengan perintah npm start
CMD ["npm", "start"]
