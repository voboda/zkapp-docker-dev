# A clean, contained dev environment for zkaoos with Mina

1. `docker compose up -d` to turn it on (you might need to use sudo)
2. `docker ps` to find the container id or lable
2. `docker exec -it [id_or_label] bash` to connect to it


## Saving files
When you're in `/app` is where you should keep the files you want to save.  That will save to `./app` on your host.  (Everywhere else in the container won't be saved when the container is stopped.)
