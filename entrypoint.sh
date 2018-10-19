#!/bin/bash
# entrypoint.sh file for starting the xvfb with better screen resolution, configuring and running the vnc server, pulling the code from git and then running the test.
export DISPLAY=:20
Xvfb :20 -screen 0 1366x768x16 &
x11vnc -passwd TestVNC -display :20 -N -forever &

#mkdir -p /usr/tests/ruby_cucumber
#cd /usr/tests/ruby_cucumber
#git clone https://github.com/prashanth-sams/ruby_cucumber.git /usr/tests/ruby_cucumber

git pull origin master
cucumber features/scenarios/demo/google.feature MODE=headless
wait