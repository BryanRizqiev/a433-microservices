# Membuat image dengan nama order-service dan tag latest
docker build -t order-service:latest .

# Melihat semua image di local
docker image ls

# Mengubah nama dan tag dari image local order-service:latest
docker tag order-service:latest ghcr.io/bryanrizqiev/order-service:latest

# Login ke Github Packages
echo $TOKEN | docker login ghcr.io --username BryanRizqiev --password-stdin

# Push image ke repository image Github Packages
docker push ghcr.io/bryanrizqiev/order-service:latest