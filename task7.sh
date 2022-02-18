#!/bin/bash
compF=${1}
exeF=${2}

gcc "$compF" -o $exeF && ./$exeF
