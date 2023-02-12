#!/bin/bash
# Get dotfiles from .config
# Author: Thomas Schüller
# Website: www.thosch.io
# 

CONFIGS=(alacritty bspwm dunst fish htop kitty nvim picom polybar rofi sxhkd termite dwm dmenu polybar neofetch)

USER_FOLDER="./users/$USER"

mkdir -p "$USER_FOLDER"

# RC files
cp ~/.bashrc "$USER_FOLDER"
cp ~/.zshrc "$USER_FOLDER"

		#cp -r ~/.config/$CONFIG "$USER_FOLDER"
for CONF in "${CONFIGS[@]}"; do
		echo "Copying $CONF"
		CONF_PATH="/home/$USER/.config/$CONF" 
		echo "CONF_PATH" $CONF_PATH

		# Try to copy the config
		{
		  cp -r "$CONF_PATH" "$USER_FOLDER"/config
		} || {
		  echo "Failed to copy $CONF_PATH"
		}

done



