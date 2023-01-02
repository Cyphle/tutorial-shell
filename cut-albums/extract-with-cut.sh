#!/bin/bash

albums=$1

cut -f4 -d\| $albums
