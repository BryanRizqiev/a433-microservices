# Membuat image dengan nama karsajobs-ui dan tag latest
docker build -t karsajobs-ui:latest .

# Melihat semua image di local
docker image ls

# Mengubah nama dan tag dari image local karsajobs-ui:latest
docker tag karsajobs-ui:latest ghcr.io/bryanrizqiev/karsajobs-ui:latest

# Login ke Github Packages
echo $TOKEN | docker login ghcr.io --username BryanRizqiev --password-stdin

# Push image ke repository image Github Packages
docker push ghcr.io/bryanrizqiev/karsajobs-ui:latest