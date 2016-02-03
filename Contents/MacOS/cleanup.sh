#!/bin/bash

rm -r PCB*.backup ../include ../lib ../bin ../usr ../share ../etc ../libexec ../var
rm -ir ../[a-zA-LN-Z]*
rm -ir ...* *appRef*
rm -ir ../*appRef*


if [ -e "pcb.originalBackup" ]
then
	mv -i "pcb.originalBackup" "pcb"
fi
