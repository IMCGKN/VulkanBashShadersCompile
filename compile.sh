#!/bin/bash

cd shaders/
for fileName in *{.frag,.vert}; do
    glslc $fileName -o $fileName.spv
done

# glslc shaders/simple_shader.vert -o shaders/simple_shader.vert.spv
# glslc shaders/simple_shader.frag -o shaders/simple_shader.frag.spv
# glslc shaders/point_light.frag -o shaders/point_light.frag.spv
# glslc shaders/point_light.frag -o shaders/point_light.frag.spv