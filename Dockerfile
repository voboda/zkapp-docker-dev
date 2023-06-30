FROM archlinux:latest
WORKDIR /app
COPY ./home /root
RUN pacman -Syu --noconfirm
RUN pacman -S vim ranger nodejs npm  --noconfirm
RUN npm -g install zkapp-cli
#Set the command to keep the container running
CMD tail -f /dev/null
