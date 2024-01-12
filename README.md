# Bash Script for File Backup

Automate file backups with this Bash script that creates compressed archives for files modified within the last 24 hours.

## Features

- **Automated Backups:** Easily create backups of files modified within the last 24 hours.
- **Customizable:** Specify the target and destination directories for backup operations.
- **Timestamped Archives:** Each backup is uniquely identified with a timestamp for easy reference.

## Quick Start

1. **Clone the Repository:**

    ```bash
    git clone https://github.com/shajon1211045/Bash-script-for-backing-up-file-updates.git
    cd Bash-script-for-backing-up-file-updates
    ```

2. **Run the Script:**

    ```bash
    ./backup.sh target_directory destination_directory
    ```

    Make sure both directories exist and are valid.

3. **Verify Backup:**

    Check the destination directory for the generated backup file.

## Requirements

- Bash (Bourne Again SHell)
- `tar` command-line utility

## Configuration

Adjust the script's variables within the code to customize the target and destination directories according to your needs.

## Issues

If you encounter any issues or have suggestions, feel free to [open an issue](https://github.com/shajon1211045/Bash-script-for-backing-up-file-updates/issues).
