#!/bin/bash

docker run -d -p 80:80 -v $(pwd)/www:/www:rw tomblog

