# zeus-setup

Zeus setup is a script built with Chocolatey to help you get your new windows machine setup. It installs all the applications you know and love! This script is geared towards software developers and gamers. I am both at heart :heart:. Zeus setup aims to get your new rig ready to develop and game on as quickly as possible.

- [zeus-setup](#zeus-setup)
  - [Chocolatey Introduction / Resources](#chocolatey-introduction--resources)
  - [List of Installs](#list-of-installs)
    - [Utility Installs (`./utility-packages.config`)](#utility-installs-utility-packagesconfig)
    - [Software Development Installs (`./dev-packages.config`)](#software-development-installs-dev-packagesconfig)
    - [Gaming Installs (`./gaming-packages.config`)](#gaming-installs-gaming-packagesconfig)
  - [How to Run](#how-to-run)
  - [Uninstall applications](#uninstall-applications)
  - [Closing Comments](#closing-comments)

## Chocolatey Introduction / Resources

"Chocolatey is software management automation for Windows that wraps installers, executables, zips, and scripts into compiled packages. Chocolatey integrates w/SCCM, Puppet, Chef, etc. Chocolatey is trusted by businesses to manage software deployments" (From Chocolatey Website). 

Read more about chocolatey at the resources listed below:

| Description | Link | 
|---|---|
| Main Page | <https://chocolatey.org/> | 
| Available Packages |<https://chocolatey.org/packages>

## List of Installs

Zeus setup will ask you what type of install you would like after running it. The options are:
```
1) All Installs
2) Only Utility Installs
3) Only Software Development Installs
4) Only Gaming Installs
```

This section lists the applications Zeus setup automatically downloads and installs for you. The lists are in the same order as the config files, so feel free to tweak the config files to your liking. Remove the lines for the applications that you don't want on your new dev/gaming machine.

### Utility Installs (`./utility-packages.config`)
* Chrome
* Firefox
* Spotify
* SoundSwitch

### Software Development Installs (`./dev-packages.config`)
* Windows Terminal
* Git
* 7-Zip
* Notepad++
* Visual Studio Code
* Unity

### Gaming Installs (`./gaming-packages.config`)
* GeForce Experience
* Discord
* Steam
* Epic Games
* ~~Battlenet~~
* Origin
* Uplay
* Twitch
* GoG

## How to Run

Run Windows Powershell as an administrator. Install chocolatey by running the following command:

```
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
```

Next run and answer the initial prompt (specifying what type of install you want):
```
./zeus-setup.ps1
```
> :bulb: Note: Be sure to remove any applications you dont want installed on your machine before running `./zeus-setup.ps1`. This can be accomplished by removing the line pertaining to the application you don't want from the config files: 
> 
> `./utility-packages.config`
> 
> `./dev-packages.config`
> 
> `./gaming-packages.config`



## Uninstall applications

To uninstall applications after the fact that Zeus setup installed for you, simply run:

```
choco uninstall <package-id> -y
```

## Closing Comments

Zeus setup won't be for everyone. Feel free to fork your own version of Zeus setup and make adjustments that better align with your software development and gaming needs.