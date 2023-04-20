#!/bin/bash

# Check for XAMPP dependency
if [ -d "/opt/lampp" ]; then
  echo "XAMPP is installed."
else
  echo "XAMPP is not installed. Installing..."
  # Install XAMPP using package manager
  if which apt-get >/dev/null; then
    sudo apt-get update && sudo apt-get install -y xampp
  elif which yum >/dev/null; then
    sudo yum install -y xampp
  else
    echo "Unable to install XAMPP. Package manager not found."
    exit 1
  fi
fi
