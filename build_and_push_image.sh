# Membuat image dengan nama shipping-service dan tag latest
docker build -t shipping-service:latest .

# Melihat semua image di local
docker image ls

# Mengubah nama dan tag dari image local shipping-service:latest
docker tag shipping-service:latest ghcr.io/bryanrizqiev/shipping-service:latest

# Login ke Github Packages
echo $TOKEN | docker login ghcr.io --username BryanRizqiev --password-stdin

# Push image ke repository image Github Packages
docker push ghcr.io/bryanrizqiev/shipping-service:latest