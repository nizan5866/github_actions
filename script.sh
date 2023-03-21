#!/bin/bash

name="rust_hello_world"
full="nizan5866/${name}"
docker rm -f ${name}
docker rmi -f ${full}
docker build . -t ${full}
docker run --name ${name} ${full}
docker push ${full}
