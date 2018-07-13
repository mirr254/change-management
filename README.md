# change-management
A repository to store change management configuration file for packer and other tools

## What does  this tool do?
Automates the creation of AWS instance but it creates a snapshot of the instance - called an  `image`.

It creates an image in AWS AMI and configures that image to include all the installation and configurations necessary to deploy a Python-Flask API.
`NOTE` Database used by this packer the application is hosted on `AWS RDS`. This is primariry due to separation of concerns. 

## installing and configuring packer

There are several ways to installing packer. For OSX users, `homebrew` can be used to install packer. Instructions,   
`brew install packer`  

For windows users, To install packer, first find the [appropriate package](https://www.packer.io/downloads.html) for your system and download it. Packer is packaged as a "zip" file.

Next, unzip the downloaded package into a directory where Packer will be installed. On Unix systems, `~/packer` or `/usr/local/packer` is generally good, depending on whether you want to restrict the install to just your user or install it system-wide. On Windows systems, you can put it wherever you'd like.

After unzipping the package, the directory should contain a single binary program called packer. The final step to installation is to make sure the directory you installed Packer to is on the PATH. See [this page](https://stackoverflow.com/questions/14637979/how-to-permanently-set-path-on-linux) for instructions on setting the PATH on Linux and Mac. [ This page ](https://stackoverflow.com/questions/1618280/where-can-i-set-path-to-make-exe-on-windows) contains instructions for setting the PATH on Windows.

To verify your installation, run  

`$ packer`   

on your terminal and you should get  

`usage: packer [--version] [--help] <command> [<args>]`

## Configuring packer with aws keys.

There are different ways in setting the `aws secret keys` in packer. The default one being adding the keys in the directory `~/.aws/credentials` 
Don't associate the credentials file with any extension. Put the keys as shown below.

`[default] `  
    `aws_access_key_id = AKIAJHY4AAEVG2HCDEIQ`    
    `aws_secret_access_key = 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`

This repo makes use of this. The way it works is that when packer starts the build and doesn't come across these keys in the `.json` file, it looks for the keys in the default `~/.aws/credentials` file. 

## Installing ansible

The preffered provisioner to use together with packer is ansible. To set up ansible checkout [ansible official docs](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html)

The database used is an AWS RDS. this can be changed at any point. in the environment variables set in the file `cp3-playbook.yml`.   
 The connection string has be broken down. For example `RDS_PORT`, `RDS_USERNAME`,`RDS_PORT` and so on.

To use this script, `clone` the repo and change it to suite your needs.

Remember that you have to run launch the instance manually from AWS console. Automation for that coming up soon.
