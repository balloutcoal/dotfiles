#!/bin/bash
cava -p ~/.config/cava/config | while read line; do
  echo "visualization: $line"
done
