#!/bin/bash
dir=${3}
min=$(($1))
max=$(($2))
find $dir -type f -size +$min -size -$max -exec wc -c {} \; | sort -n
