#!/bin/bash

dconf write /org/gnome/desktop/wm/preferences/mouse-button-modifier '"<Alt>"'
dconf write /org/gnome/gedit/preferences/editor/scheme "'solarized-dark'"
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf
