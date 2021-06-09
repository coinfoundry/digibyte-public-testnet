#!/bin/bash

# build image
docker build -t coinfoundry/digibyte-public-testnet .
docker push coinfoundry/digibyte-public-testnet
