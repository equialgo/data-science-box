#!/bin/bash
(sleep 5; python -mwebbrowser http://localhost:8888) &
vagrant ssh -c "IPYTHON_OPTS='notebook --ip=*' /usr/local/spark-*-bin-hadoop2.4/bin/pyspark" 
