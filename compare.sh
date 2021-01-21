#!/bin/bash

dir1='build/modalai_rb5-flight_qurt/'
dir2='../modalai_rb5-flight_qurt/'
IFS=$'\n'
for file in $(grep -Ilsr -m 1 '.' "$dir1"); do
   diff -q "$file" "${file/${dir1}/${dir2}}"
done
