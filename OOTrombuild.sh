#!/usr/bin/env bash
# automatic rombuild script for OOT RET project 
#################################
REQ_PKGS="git build-essential binutils-mips-linux-gnu python3 libpng-dev"
UPDATE="sudo apt update"
PYPIP="python3 -m pip install colorama"
#################################
function SETUP() {
    echo "Running the setup and generating baserom.z64... "
    make setup
    # if setup is successful, move onto ROMBUILD function. if not, we exit the script
    if [ $? -eq 0 ]; then
        echo "Setup successful and baserom.z64 generated."
        ROMBUILD
    else
        echo "Oops, setup failed! Exiting."
        exit 1
    fi 
}
function ROMBUILD() {
    echo "Moving onto the ROM build..."
    make
}
#################################
echo "OOT ROMbuild script."
echo "Updating repositories before beginning build..."
$UPDATE
# ensure required packages are installed. we'll install them if not. 
for pkg in $REQ_PKGS; do
    if ! dpkg -s $pkg > /dev/null 2>&1; then
        echo "Installing $pkg"
        sudo apt-get install -y $pkg
    fi
done
# ensure we have colorama from pip. we'll install it if not. 
if ! pip3 show colorama > /dev/null 2>&1; then
    echo "Installing colorama from pip..."
    $PYPIP
fi
# get ready to build the rom 
echo "All dependencies satisfied."
SETUP
ROMBUILD
# if the build is successful, we're all done. 
if [ $? -eq 0 ]; then
    echo "All done! You can now test your baserom.z64 in your emulator of choice."
else
    echo "Something went wrong. Exiting."
    exit 1
fi
# the built ROM should now be available in the /oot folder as "baserom.z64". 