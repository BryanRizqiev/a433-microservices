# Membuat image dengan nama karsajobs dan tag latest
docker build -t karsajobs:latest .

# Melihat semua image di local
docker image ls

# Mengubah nama dan tag dari image local karsajobs:latest
docker tag karsajobs:latest ghcr.io/bryanrizqiev/karsajobs:latest

# Login ke Github Packages
echo $TOKEN | docker login ghcr.io --username BryanRizqiev --password-stdin

# Push image ke repository image Github Packages
docker push ghcr.io/bryanrizqiev/karsajobs:latest