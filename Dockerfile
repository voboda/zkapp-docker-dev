FROM archlinux:latest
WORKDIR /app
COPY ./home /root
RUN pacman -Syu --noconfirm
RUN pacman -S vim git ranger nodejs npm  --noconfirm
RUN npm -g install zkapp-cli
#Set the command to keep the container running
CMD tail -f /dev/null
