#!/usr/bin/env bash

usage()
{
    echo "usage: init-local [[-u update] ] | [-h help]]"
}

LOCALDIR="${PWD}"

# Activate  environment
cd $LOCALDIR
if [[ ! -d .venv ]]; then
    python3 -m venv .venv
fi
source .venv/bin/activate
pip install -U pip
pip install -r requirements.txt
export PYTHONPATH=$PYTHONPATH:${PWD}/src

