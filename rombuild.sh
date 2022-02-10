#!/bin/bash
# automatic build script for the zelda OOT decomp project.  
# this script will build the ROM of the master quest debug build, so long as the required baserom of OOT is present - to be provided by the user.  
# the baserom must be named "baserom_original.z64" for this to work. 
# for ease of use, Debian/Ubuntu GNU/Linux is recommended.
echo "Downloading dependencies..."
sudo apt update && sudo apt install git build-essential binutils-mips-linux-gnu python3 libpng-dev -y
# fetch colorama 
echo "Dependencies satisfied. Downloading colorama..."
python3 -m pip install colorama
# proceed to the "make setup" portion of the ROM build 
echo "Running setup and generating baserom.z64..."
make setup 
# baserom.z64 should now be generated. now, build the ROM. 
echo "baserom.z64 generated. Building the ROM..."
make 
echo "Finished." 
exit