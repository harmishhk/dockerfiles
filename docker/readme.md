### local registry

```
docker run -d \
     -e STANDALONE=true \
     -e INDEX_ENDPOINT=https://docker.example.com \
     -e SETTINGS_FLAVOR=local \
     -e STORAGE_PATH=/registry \
     -p 5000:5000 \
     -v /local/users/hkhambha/docker-registry:/registry \
     registry
```
