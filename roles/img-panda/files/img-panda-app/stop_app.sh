#!/bin/bash

pid_to_stop=$(pidof -x img-panda) 
if [[ ${pid_to_stop} ]] ; then 
	kill -9 ${pid_to_stop} 
fi
