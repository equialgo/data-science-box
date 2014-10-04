#!/bin/bash
(sleep 5; python -mwebbrowser http://localhost:5000/localfile/Main%20Page.ipynb) &
vagrant ssh -c "python -m nbviewer --no-cache --localfiles='/home/vagrant/Projects/Wiki'" 
