# A clean, contained dev environment for zkapps with Mina

1. `docker compose up -d` to turn it on (you might need to use sudo)
2. `docker ps` to find the container id or lable
2. `docker exec -it [id_or_label] bash` to connect to it


## Saving files
`/app` is where you should keep the files you want to save.  That will save to `./app` on your host.  

`/root` in the container is bound to `./home` on your host, and when you first build the container, it'll copy anything in `./home` to the container - so that's a place to put your ssh keys or anything else you might need for communicating to your servers and repos.

Everywhere else in the container won't be saved when the container is stopped.


## Warning
This is new and might be buggy.  Please be careful. PRs welcome.
