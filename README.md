# wifi-credentials-dumper

Tool to extract previously connected Wi-Fi networks in the system and save the SSIDs with their respective access passwords.

The script formats and saves the collected information in a text file at the root of the specified disk, following the naming pattern: `<ComputerName>_<Timestamp>.txt`.

## Configuration

Change the `$LABEL_NAME` variable within the script to match the volume name of the disk where you want to save the output file.

## Usage Information

Execution requires appropriate permissions to access network settings and write to the specified disk.

The minified scripts are compact versions of the original scripts. They offer the same functionality as their full versions but are optimized to have fewer spaces, line breaks, and use function aliases where possible. This optimization makes them smaller and potentially faster to load and execute in environments with limited resources.

## TODO

- [ ] test script for Windows in different versions and languages;
- [ ] add tests;
- [ ] script for Linux;
- [ ] script for MacOS.
