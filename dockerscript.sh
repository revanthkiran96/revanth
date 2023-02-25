#!/bin/bash
sudo amazon-linux-extras install docker
sudo service docker start
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on
docker run --rm -itd --name=container1 -p 8000:80 nginx:v3
