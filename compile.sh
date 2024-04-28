#!/bin/bash

cd shaders/
for fileName in *{.frag,.vert}; do
    glslc $fileName -o $fileName.spv
done
