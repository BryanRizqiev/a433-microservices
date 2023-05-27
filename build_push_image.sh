# Membuat image dengan nama item-app dan tag v1
docker build -t item-app:v1 .

# Melihat semua image di local
docker image ls

# Mengubah nama dan tag dari image item-app:v1
docker tag item-app:v1 ghcr.io/bryanrizqiev/item-app:v1

# Login ke Github Packages
echo $TOKEN | docker login ghcr.io --username BryanRizqiev --password-stdin

# Push image ke repository image Github Packages
docker push ghcr.io/bryanrizqiev/item-app:v1