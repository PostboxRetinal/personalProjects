#! /bin/sh
#
# Takes $1 as positional argument for the tar file and $2 as the parent directory to copy the parent dir to
# This script is used to automate the process of updating zen browser's tarball file

# Check if the script is being run with the correct number of arguments
if [ $# -lt 2 ]; then
  echo "Two arguments are required. The first argument is the .tar.xz file and the second argument is the parent directory to copy the parent dir to"
  exit 1
fi

# Check if the script is being run as root
if [ "$EUID" -ne 0 ]; then
  echo "This script must be run as root. Exiting..."
  exit 1
fi

# Logic to remove the old zen directory and replace it with the new one
ruta=$2/zen/
echo Destination path: $ruta

# Check if the tarball file exists
if [ ! -f "$1" ]; then
  echo "Error: The tarball file $1 does not exist."
  exit 1
fi

# Remove old directory and create new one
if ! sudo rm -rf $ruta; then
  echo "Error: Failed to remove the old zen directory at $ruta"
  exit 1
fi

# Create the new zen directory
if ! sudo mkdir -p $ruta; then
  echo "Error: Failed to create the zen directory at $ruta"
  exit 1
fi

# Extract the tarball file to the new zen directory
if ! sudo tar -xvf $1 -C $ruta --strip-components=1; then
  echo "Error: Failed to extract the tarball $1 to $ruta"
  exit 1
fi

echo "Zen Browser updated successfully!"
