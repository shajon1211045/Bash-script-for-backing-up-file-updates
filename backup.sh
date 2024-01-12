#!/bin/bash
# Check if the correct number of arguments is provided.
# If not (when $# is not 2), print a usage message and exit.
if [[ $# != 2 ]]; then
  echo "Usage: $0 target_directory_name destination_directory_name"
  exit
fi

# Check if the provided directory paths are valid.
if [[ ! -d $1 ]] || [[ ! -d $2 ]]; then
  echo "Invalid directory path provided."
  exit
fi

# Set the directory names to the command line arguments.
targetDirectory=$1
destinationDirectory=$2

# Display the values of the command line arguments.
echo "Target Directory: $1"
echo "Destination Directory: $2"

# Define a variable for the current timestamp.
currentTS=$(date +%s)

# Archive the timestamp to create a backup file.
backupFileName="backup-[$currentTS].tar.gz"
echo "Backup Filename: $backupFileName"

# We're going to:
# 1. Save the current working directory
# 2. Change to the destination directory and get its absolute path
# 3. Change back to the original working directory

# Save the current working directory to origAbsPath.
origAbsPath=$(pwd)
echo "The absolute path of the current directory is: $origAbsPath"

# Change to the destination directory and get its absolute path.
cd "$destinationDirectory" && destAbsPath=$(pwd)
# The && ensures that the next command (pwd) is executed only if the cd command is successful.
echo "The absolute path of the destination directory is: $destAbsPath"

# Change directories from the current working directory to the target directory.
cd "$origAbsPath" && cd "$targetDirectory"

# Find the timestamp for yesterday.
yesterdayTS=$(($currentTS - 24 * 60 * 60))

# Declare an array called toBackup to store files modified since yesterday.
declare -a toBackup

# Iterate through each file in the target directory.
for file in $(ls); do
  # Get the last modified date of the file.
  file_last_modified_date=$(date -r "$file" +%s)
  
  # Check if the file was modified after yesterday's timestamp.
  if (( $file_last_modified_date > $yesterdayTS )); then
    # Add the file to the toBackup array.
    toBackup+=("$file")
  fi
done

# Create a compressed tar archive of the files to backup.
tar -czvf "$backupFileName" "${toBackup[@]}"

# Move the backup file to the destination directory.
mv "$backupFileName" "$destAbsPath/"



