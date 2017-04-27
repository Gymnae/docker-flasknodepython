#!/bin/sh


#take ENV delivered on start of container to start npm or python app
ANGULARPATH=${ANGULARPATH:-}
PYTHONPATH=${PYTHONPATH:-}
PYTHONAPP=${PYTHONAPP:-}

# TODO: IF-loop for checking if ENVs were supplied
# check for corret nmp syntax to start servers
# check if python3 needs to run as root or not in docker

# run npm server in devmode if ANGULARPATH was supplied
CMD cd /home/angpynode/$ANGULARPATH && \
    npm start:dev
    
# run python if pythonpath was supplied
CMD cd /home/angpynode/$PYTHONPATH/ && \
    python3 $PYTHONAPP
