#!/bin/bash
# Script to flash twrp
echo "Installing safe TWRP recovery"
fastboot flash recovery twrp.img
fastboot boot twrp.img
echo "---------------"
exit

