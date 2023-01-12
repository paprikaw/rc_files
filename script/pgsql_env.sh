#!/bin/bash

PGHOME=~/localstorage/$USER/pgsql
export PGDATA=$PGHOME/data
export PGHOST=$PGDATA
export PGPORT=5432
export LD_LIBRARY_PATH=$PGHOME/lib
export PATH=$PGHOME/bin:$PATH
