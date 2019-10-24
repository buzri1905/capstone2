#!/bin/bash

if [[ $1 =~ ^[+-]?[0-9]+\.?[0-9]*$ ]];then
	echo float
fi
