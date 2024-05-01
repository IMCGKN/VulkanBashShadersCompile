#!/bin/bash
# !!!!!!!!!!!!!! WORKS ONLY IN LINUX   !!!!!!!!!!!!!!

if ! command -v glslc &> /dev/null; then
    echo "<glslc> could not be found"
    exit 1
fi

echo "Enter directory of shaders: "
read directory

if [ -d ${directory}/ ]; then
    cd ${directory}/
    if [ -z "$(ls .)" ]; then
        echo "No shaders!"
    else
        for fileName in *{.frag,.vert}; do
            glslc $fileName -o $fileName.spv
        done
    fi
else
    echo "No folder named '${directory}'!"
fi
