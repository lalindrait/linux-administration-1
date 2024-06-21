#!/bin/bash

# =================================================================
# Script Name: cleanup.sh
# Author: Lalindra
# Email: user@example.com
# Description: Delete files exceeding a certain size
# Date: 2024-06-21
# Version: 0.1 
# =================================================================

# Function to delete files by size
function delete_files_by_size() {
  local file_path="$1" 
  local size_limit="$2" 
  find "$file_path" -type f -size +"$size_limit" -exec rm -f {} \;
}

# Check for mandatory arguments
if [ $# -lt 2 ]; then
  echo "Usage: $0 <file_path> <size_limit>"
  echo "Example: $0 /home/user/data 10k"
  echo "Example: $0 /home/user/data 10M"
  exit 1
fi

# Get file path and size limit arguments
file_path="$1"
size_limit="$2"

# Find files larger than the size limit and delete them with confirmation
find "$file_path" -type f -size +"$size_limit" -exec ls -l {} \;
read -p "Are you sure you want to delete these file yes/no ? " delete_action
if [[ $delete_action =~ ^(yes|YES)$ ]]; then
    echo "Received confirmation. Deleting files ..."
    delete_files_by_size $file_path $size_limit  
else
  echo "Exiting without deleting files"
  exit 1
fi
echo "Script executed successfully"

