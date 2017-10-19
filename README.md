## docker-sickrage
Doesn't do anything but have a ansible folder to run the container

### Running container manually

```bash
docker pull linuxserver/sickrage
docker run -d \
        -p 127.0.0.1:8081:8081 \
        -e PGID=$(id -g) \
        -e PUID=$(id -u) \
        -v /docker/sickrage:/config \
        -v /data/media:/download \
        -v /data/media/TV:/tv \
        --restart always \
        --name sickrage \
        linuxserver/sickrage
```

#### Running container using 
```bash
ansible-playbook -vv -K sickrage.yml
```
