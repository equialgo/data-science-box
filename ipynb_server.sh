#!/bin/bash
input=$1
if [ "$input" = "stop" ] ; then
    vagrant ssh -c "source .profile; stop_ipynb_server"
else
    (sleep 5; python -mwebbrowser http://localhost:8888) &
    vagrant ssh -c "source .profile; start_ipynb_server"
fi
