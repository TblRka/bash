#!/bin/bash
echo -n >> reversefl.txt
ls | cat > reversefl.txt
sort -r reversefl.txt
