#/bin/bash

echo $1

if [ -f "$1" ]
then
	name=`echo $1|sed -e "s,\(.*\).pnm,\1,"`
	convert $name.pnm $name.pdf
fi

if [ -f "$name".ps ]
then
	ps2eps -f $name.ps
	rm -f $name.ps
fi	
