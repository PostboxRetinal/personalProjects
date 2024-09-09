#! /bin/sh
#
# Takes $1 as positional argument for the tar file and $2 as the parent directory to copy the parent dir to
# This script is used to automate the process of updating the floorp files
#
# made by bastian


# Check if the script is being run with the correct number of arguments
if [ $# -lt 2 ]
  then
    echo "Two arguments are required. The first argument is the tar file and the second argument is the parent directory to copy the parent dir to"
fi

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]
  then echo "This script must be run as root. Exiting..."
  exit
fi

# Logic to remove the old floorp directory and replace it with the new one
ruta=$2/floorp/
echo Destination path: $2/floorp/

# Check if the directory exists
sudo rm -r $ruta
sudo mkdir $ruta
sudo tar -xjvf $1 -C $2
