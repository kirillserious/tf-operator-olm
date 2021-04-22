#!/bin/bash -e

curl -L https://github.com/operator-framework/operator-lifecycle-manager/releases/download/v0.17.0/install.sh -o install.sh
chmod +x install.sh
./install.sh v0.17.0
