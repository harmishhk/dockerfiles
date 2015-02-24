### local registry
```
docker run -d \
     -e STANDALONE=true \
     -e INDEX_ENDPOINT=https://docker.example.com \
     -e SETTINGS_FLAVOR=local \
     -e STORAGE_PATH=/registry \
     -e SEARCH_BACKEND=sqlalchemy \
     -p 5000:5000 \
     -v /home/hkhambha/docker-registry:/registry \
     --name registry \
     registry
```

### ui for inspecting local registry
```
docker run -d \
    -p 8010:8080 \
    -e REG1=http://registry:5000/v1/ \
    --link registry:registry \
    atcol/docker-registry-ui
```
