#!/bin/bash
# Script to clone device sources for X00TD

read -p "Enter branch name of device tree (default lineage-16.0): " DEVICE_BRANCH
read -p "Enter branch name of remaining trees (default lineage-16.0): " BRANCH

ORGANIZATION='https://github.com/X00TD'

if [ -z "$BRANCH"]; then BRANCH="lineage-16.0"; fi
if [ -z "$DEVICE_BRANCH"]; then DEVICE_BRANCH="lineage-16.0"; fi

echo -e "\n============== CLONING DEVICE TREE ==============\n"
git clone -b $DEVICE_BRANCH "$ORGANIZATION"'/android_device_asus_X00TD' device/asus/X00TD

echo -e "\n============== CLONING VENDOR TREE ==============\n"
git clone -b $BRANCH "$ORGANIZATION"'/proprietary_vendor_asus' vendor/asus

echo -e "\n============== CLONING KERNEL ==============\n"
git clone -b $BRANCH "$ORGANIZATION"'/android_kernel_asus_sdm660' kernel/asus/

echo -e "\n============== DONE ==============\n"