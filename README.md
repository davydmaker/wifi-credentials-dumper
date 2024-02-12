# wifi-credentials-dumper
Tool to extract previously connected Wi-Fi networks in the system and save the SSIDs with their respective access passwords.

The script formats and saves the collected information in a text file at the root of the specified disk, following the naming pattern: `<ComputerName>_<Timestamp>.txt`.

## Configuration
Change the `$LABEL_NAME` variable within the script to match the volume name of the disk where you want to save the output file.

## Usage
To run the script, copy and paste the code into a PowerShell prompt or run the `.ps1` file.

Execution requires appropriate permissions to access network settings and write to the specified disk.

## TODO
- [ ] script for Linux;
- [ ] script for MacOS.
