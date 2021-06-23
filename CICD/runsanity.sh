#!/bin/bash

TESTURL="localhost:8081/samplewar"


launch_container()
{
  echo "INFO: Begin Docker container creation"
  IMG=$1
  BUILDDIR=$(pwd)
  mkdir sanity

  CID=$(/usr/bin/docker run -itd --name cloudy -p 8081:8081 -v ${BUILDDIR}/sanity:/opt/jboss/wildfly/standalone/log ${IMG})

  if [ $? -ne "0" ]; then
     echo "ERROR: Couldnt create Docker Container"
     exit 1
  else
     sleep 15
     echo "INFO: Container Launch Initiated ${CID}"
  fi
  
  echo "INFO: Completed  Docker container creation"
}

#MAIN#
launch_container $1

