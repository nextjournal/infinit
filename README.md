# Infinit Storage Platform in Docker

For servers

```
docker run -it --net=host --privileged \
  -e "USER=user" \
  -e "NETWORK=network" \
  -e "MODE=server" \
  -e "VOLUME=volume" \
  -v /srv/data/infinit:/infinit \
  -v /var/lib/infinit:/infinit_storage \
  nextjournal/infinit-docker
```

For clients

```
docker run -it --net=host --privileged \
  -e "USER=user" \
  -e "NETWORK=network" \
  -e "VOLUME=volume" \
  -v /srv/data/infinit:/infinit \
  -v /mnt/infinit:/infinit_mount:shared \
  nextjournal/infinit-docker
```
