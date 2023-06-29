#!/bin/bash

curl -LO https://github.com/controlplaneio/kubesec/releases/download/v2.13.0/kubesec_linux_amd64.tar.gz
tar -xzvf kubesec_linux_amd64.tar.gz
sudo mv kubesec /usr/local/bin