#!/bin/bash
(sleep 5; python -mwebbrowser http://localhost:9889) &
vagrant ssh -c "ipython notebook --profile r" 
