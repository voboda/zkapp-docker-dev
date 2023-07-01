# Quick start IDE with Mina

1. `docker compose up -d` to turn it on (you might need to use sudo)
2. Load up the IDE in your browser at https://localhost:800


## Saving files
`./project` maps from the container to the `./project` on the host - use it for your code

`./.config` in the container maps to `./config` on the host - and saves your IDE configuration

`./.ssh` in the container maps to `./ssh` on the host - which you can use for ssh keys

Everywhere else in the container won't be saved when the container is stopped, so don't leave files there.

## Warning
This is new and might be buggy.  Please be careful. PRs welcome.
