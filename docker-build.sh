#!/bin/sh
docker build . -t sample-app-graalvm
echo
echo
echo "To run the docker container execute:"
echo "    $ docker run -p 8080:8080 sample-app-graalvm"
