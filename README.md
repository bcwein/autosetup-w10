# Autosetup-W10

This repository is how i have automated the setup of my own personal windows 10 computer. The main goal is that after a fresh windows 10 installation i can automatically install all software and have a computer that is as similar as possible as before a new installation was set up.

# Runningthe code
This code must be executed in a elevated powershell prompt. Also, a XML file containing the list of chocolatey packages to install must be added since i have not added my personal XML file to this github. See https://docs.chocolatey.org/en-us/choco/commands/install?#packages.config for a sample config.

# Pros and Cons
## Pros
- This setup can install and upgrade packages
  
## Cons
- It does not remove unecessary packages. (If i remove a package from env.config it is not uninstalled on my machine)
  
Hopefully, the con above will be solved when this issue is closed https://github.com/chocolatey/choco/issues/533
