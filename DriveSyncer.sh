#!/bin/zsh

# Define source and destination
SOURCE="/Volumes/ExternalHDD/"
DESTINATION="/Volumes/ExternalSSD/"

# Use rsync to copy
rsync -avh --progress --partial "$SOURCE" "$DESTINATION"

# Check if rsync completed successfully
if [ $? -eq 0 ]; then
    echo "Copy completed successfully."
else
    echo "An error occurred during copying."
fi
