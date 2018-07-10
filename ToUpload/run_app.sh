#!/usr/bin/env bash
#cd to where the app is downloaded

cd /var/www/brigt-events
#activate virtual environment
source venv-api/bin/activate

#start app using gunicorn
sudo gunicorn run:app
