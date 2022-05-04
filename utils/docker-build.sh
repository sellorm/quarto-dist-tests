#!/usr/bin/env bash

for i in $(ls Dockerfiles/*); do
    docker build -t quarto-tests/${i:12} -f ${i} .
done

