#!/bin/bash
(sleep 5; python -mwebbrowser http://localhost:8888) &
vagrant ssh -c "sudo ipython notebook --profile dsb" 
