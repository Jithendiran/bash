#!/bin/bash

#start Backend
# if ! sudo lsof -i:7077; 
# then 
gnome-terminal --tab -- bash -c "cd /home/calibraint/Work/time/time-rest;nodemon start;echo Backend;exec bash"&
# fi


#start Frontend
if ! sudo lsof -i:4200; 
then 
gnome-terminal --tab -- bash -c  "cd /home/calibraint/Work/time/timetracker-web;ng serve;echo Frontend;exec bash"&
fi

#open front end
code /home/calibraint/Work/time/timetracker-web &

#open back end
code /home/calibraint/Work/time/time-rest 