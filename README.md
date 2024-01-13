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

## Scheduling Automated Backups with Cron

To schedule automated backups using cron, you can follow these steps:

1. **Open the Crontab Configuration:**

    ```bash
    crontab -e
    ```

2. **Add a Cron Job to Run the Backup Script Every 24 Hours:**

    Add the following line to the crontab file, adjusting the paths to your actual script, target directory, and destination directory:

    ```bash
    0 0 * * * /path/to/backup.sh /path/to/target_directory /path/to/destination_directory
    ```

    This cron expression runs the backup script every day at midnight (00:00).

3. **Save and Exit:**

    - For Nano editor, press `Ctrl + X` to exit, press `Y` to confirm changes, and then press `Enter` to save.
    - For other editors, follow the respective instructions to save and exit.

4. **Verify Cron Job:**

    To verify that your cron job has been added, use the following command:

    ```bash
    crontab -l
    ```

    You should see the scheduled cron job in the list.

Now, the backup script will be automatically executed every 24 hours, creating compressed archives for files modified within the last day.

**Note:** Ensure that the cron service is running. If not, you may need to start it using the appropriate command for your system.

## Issues

If you encounter any issues or have suggestions, feel free to [open an issue](https://github.com/shajon1211045/Bash-script-for-backing-up-file-updates/issues).
