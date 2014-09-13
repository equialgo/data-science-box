#!/bin/bash
(sleep 5; python -mwebbrowser http://localhost:8998) &
vagrant ssh -c "ipython notebook --profile julia"
