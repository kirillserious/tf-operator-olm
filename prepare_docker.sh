#!/bin/bash -e

sudo docker run -d -p 5000:5000 --restart=always --name registry registry:2
cat <<EOF | sudo tee /etc/docker/daemon.json
{
    "insecure-registries" : [ "localhost:5000", "tf-nexus.progmaticlab.com:5002" ]
}
EOF
sudo systemctl restart docker
