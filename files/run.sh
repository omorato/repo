#!/bin/bash

if apache2ctl -t ; then
	exec apache2ctl -DFOREGROUND
else
	echo "Que haces insensato"
fi

exit 0
