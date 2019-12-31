# Chocolatey Install Scripts

This is my personal collection of install scripts used when setting up new machines.

## Getting Started

The scripts are built in a modular way to allow you to run and install only what you need. First run the init script and then the required modules.

### Prerequisites

Download and run the init.ps1 script with the below command in an elevated PowerShell command prompt:

```powershell
Set-ExecutionPolicy Bypass -Scope Process -Force; .\init.ps1
```

### Installing

Each script installs a group of tools as noted in the script name.

## Built With

* [Chocolatey](https://chocolatey.org/) - Windows package manager, without which this repo would not be possible

## Authors

* **Reece Campbell** - *Initial work* - [RamblingReece](https://github.com/RamblingReece)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details
