curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh

sudo sh -eux <<EOF
# Install newuidmap & newgidmap binaries
apt-get install -y uidmap
EOF

dockerd-rootless-setuptool.sh install

sudo apt-get install docker-compose -y