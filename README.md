# change-management
A repository to store change management configuration file for packer and other tools

## What does  this tool do?
Automates the creation of AWS instance but it creates a snapshot of the instance - called an  `image`.

It creates an image in AWS AMI and configures that image to include all the installation and configurations necessary to deploy a Python-Flask API.

The database used is an AWS RDS. this can be changed at any point. in the environment variables set in the file `cp3-playbook.yml`. The connection string has be broken down. For example `RDS_PORT`, `RDS_USERNAME`,`RDS_PORT` and so on.

To use this script, `clone` the repo and change it to suite your needs.
