sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(. /etc/os-release; echo "$UBUNTU_CODENAME") stable"

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose

sudo usermod -aG docker $USER

sudo chmod 666 /var/run/docker.sock





#Reference
#https://docs.docker.com/engine/install/ubuntu/

#https://computingforgeeks.com/install-docker-and-docker-compose-on-linux-mint-19/

#https://stackoverflow.com/questions/60137344/docker-how-to-solve-the-public-key-error-in-ubuntu-while-installing-docker

#https://newbedev.com/docker-got-permission-denied-while-trying-to-connect-to-the-docker-daemon-socket-at-unix-var-run-docker-sock-post-http-2fvar-2frun-2fdocker-sock-v1-24-containers-create-dial-unix-var-run-docker-sock-connect-permission-denied-code-example
