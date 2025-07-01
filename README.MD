# Zen Browser Updater

A bash script that automates the process of updating Zen Browser by replacing the old installation with the newest decompressed tarball file

## Features

- Automated removal of old Zen Browser installation
- Extraction and installation of new Zen Browser tarball
- Root privilege verification for system-level operations
- Input validation to ensure proper usage
- Clean directory structure management

## Requirements

- Root privileges (script must be run with sudo)
- Zen Browser tarball file (.tar.xz format)
- Target installation directory

## Usage

```bash
sudo ./zenUpdater.sh <tarball_file> <parent_directory>
```

### Parameters

- `<tarball_file>`: Path to the Zen Browser .tar.xz file
- `<parent_directory>`: Parent directory where the zen/ folder will be created/updated

### Example

```bash
sudo ./zenUpdater.sh zen-browser-1.0.0.tar.xz /opt
```

This will:

1. Remove the existing `/opt/zen/` directory
2. Create a new `/opt/zen/` directory
3. Extract the contents of `zen-browser-1.0.0.tar.xz` into `/opt/zen/`

## Safety Features

- **Root Check**: Ensures the script is run with appropriate privileges
- **Argument Validation**: Verifies that both required parameters are provided
- **Directory Management**: Safely removes and recreates the target directory

## Installation

1. Make the script executable:

   ```bash
   chmod +x zenUpdater.sh
   ```

2. Run with appropriate parameters as shown in the usage section

## Notes

- **⚠️ Warning**: This script will completely remove the existing Zen Browser installation directory
- Always backup important data before running system-level update scripts
- Ensure you have the correct tarball file before execution
