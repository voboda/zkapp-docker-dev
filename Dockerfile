FROM codercom/code-server:debian

# Install nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash
RUN sudo apt-get install -y nodejs

# Allow user to install global packages without sudo
RUN mkdir /home/coder/.npm-global
RUN npm config set prefix '/home/coder/.npm-global'
RUN echo "export PATH=~/.npm-global/bin:$PATH" > /home/coder/.profile

# Install Mina's cli
RUN npm i -g zkapp-cli

# Start code-server
CMD ["code-server", "--bind-addr", "0.0.0.0:8080"]
