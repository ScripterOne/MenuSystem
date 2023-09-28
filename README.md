# MenuSystem
Powershell based Menu System for my file utilities.
Certainly! Below is a sample `README.md` file for your PowerShell script, which you can upload to your GitHub repository.

---

# EverStaR's Tools PowerShell Script

## Table of Contents

- [Introduction](#introduction)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
  - [File Management](#file-management)
  - [Security](#security)
- [Enabling PowerShell Script Execution](#enabling-powershell-script-execution)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

## Introduction

This PowerShell script provides a user-friendly menu interface for launching various tools developed by EverStaR. The script is designed to be intuitive and easy to use, offering two main categories: File Management and Security.

## Features

- **File Management**
  - BackUp Utility
  - DeDuplicator
- **Security**
  - Check4BadIPs

## Installation

1. Clone the GitHub repository to your local machine.
   ```
   git clone https://github.com/YourUsername/YourRepository.git
   ```
2. Navigate to the directory where the script is located.
3. Run the script in PowerShell.

## Usage

### File Management

#### BackUp Utility

- **What it does**: This utility helps you back up important files.
- **How to use**: Select option `1` from the File Management menu.
- **Error Logging**: Errors are logged in `backup_error.log`.

#### DeDuplicator

- **What it does**: This utility identifies and removes duplicate files.
- **How to use**: Select option `2` from the File Management menu.
- **Error Logging**: Errors are logged in `deduplicator_error.log`.

### Security

#### Check4BadIPs

- **What it does**: This utility checks for bad IP addresses that might be harmful.
- **How to use**: Select option `1` from the Security menu.
- **Error Logging**: Errors are logged in `Check4BadIPs_error.log`.

## Enabling PowerShell Script Execution

By default, PowerShell restricts the execution of scripts for security reasons. To enable the execution of PowerShell scripts, you can change the execution policy. **Note: Run PowerShell as an Administrator for these commands.**

- To enable script execution for the current session only:
  ```powershell
  Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process
  ```

- To enable script execution permanently:
  ```powershell
  Set-ExecutionPolicy -ExecutionPolicy Unrestricted
  ```
  **Warning**: This will allow all scripts to run and potentially expose your system to risks.

## Contributing

If you would like to contribute, please fork the repository and submit your changes via a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Contact

For comments and questions, please reach out to [scripter@everstar.com](mailto:scripter@everstar.com).

---

Feel free to modify this README to better suit your project's specific needs.
