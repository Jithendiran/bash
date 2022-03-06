#!/bin/bash

#start client
gnome-terminal --tab -- bash -c "cd /home/calibraint/Work/calibsolutions/client;npm run start;exec bash"&

#start server
gnome-terminal --tab -- bash -c  "cd /home/calibraint/Work/calibsolutions/server;npm run start;exec bash"&

#start rest
gnome-terminal --tab -- bash -c "cd /home/calibraint/Work/mozhi/ichatbot-rest;npm run start;exec bash"&

#start mozhi-web
gnome-terminal --tab -- bash -c "cd /home/calibraint/Work/mozhi/mozhi-web;npm run start;exec bash"


#gnome-terminal --tab -- bash -c "ls;echo hi;exec bash"