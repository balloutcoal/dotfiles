#!/bin/bash

#temp image path
SCREEN='/tmp/screen.png'

#takes screenshot with grim (hyprshot requires input not auto)
grim "$SCREEN"

hyprlock
