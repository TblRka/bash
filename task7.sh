#!/bin/bash
echo -n > filelist.txt
y=$(ls | cat >> filelist.txt)
sort filelist.txt

