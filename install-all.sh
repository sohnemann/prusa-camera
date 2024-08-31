curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh

sudo sh -eux <<EOF
# Install newuidmap & newgidmap binaries
apt-get install -y uidmap
EOF

dockerd-rootless-setuptool.sh install

sudo cp ./prusa-camera.service /etc/systemd/system/prusa-camera.service
sudo systemctl daemon-reload
sudo systemctl enable prusa-camera
sudo systemctl start prusa-camera