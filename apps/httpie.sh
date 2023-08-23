#!/bin/bash
curl -SsL https://packages.httpie.io/deb/KEY.gpg | sudo gpg --dearmor -o /usr/share/keyrings/httpie.gpg
sudo su -c "echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/httpie.gpg] https://packages.httpie.io/deb ./' > /etc/apt/sources.list.d/httpie.list"
sudo apt update
sudo apt install httpie && sudo apt autoremove -y
