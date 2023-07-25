#!/bin/bash

# Check if IP address was given as argument
if [ "$#" -ne 1 ]; then
    echo "Verwendung: $0 <IP-Adresse der EC2-Instanz>"
    exit 1
fi

# Define the source and destination folders and file names
SOURCE_DIR=~/Downloads
DEST_DIR=~/.ssh
SOURCE_FILE=key.pem
DEST_FILE="key_$1.pem"

# Copy and rename the key file
cp "$SOURCE_DIR/$SOURCE_FILE" "$DEST_DIR/$DEST_FILE"

# Change the permissions of the key file
chmod 400 "$DEST_DIR/$DEST_FILE"

# Connect to the EC2 instance
ssh -i "$DEST_DIR/$DEST_FILE" ec2-user@"$1"
