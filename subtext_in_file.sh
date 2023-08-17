#!/bin/bash

sed -i "s/collab.cloza.tech/collab.cloza.org/g" $(find app/static/scripts/ -name '*.js')
