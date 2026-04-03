#!/bin/bash

mkdir -p ~/Pictures/Screenshots

FILENAME=~/Pictures/Screenshots/$(date +'screenshot_%Y-%m-%d_%H-%M-%S.png')

if grim -g "$(slurp)" "$FILENAME"; then
    # Remover metadados com mat2
    mat2 --inplace "$FILENAME"
    
    notify-send "Screenshot" "Salvo em $FILENAME (sem metadados)" -i "$FILENAME"
fi