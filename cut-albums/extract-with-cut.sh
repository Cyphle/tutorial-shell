#!/bin/bash

albums=$1

# Keep 4th elements after splitting by | (arg -d with escaped |)
cut -f4 -d\| $albums
