#!/bin/bash

TESTURL="localhost:8080/samplewar"


launch_container()
{
  echo "INFO: Begin Docker container creation"
  IMG=$1
  BUILDDIR=$(pwd)
  mkdir sanite

  CID=$(/usr/bin/docker run -itd --name cloud -p 8080:8080 -v ${BUILDDIR}/sanity:/opt/jboss/wildfly/standalone/log ${IMG})

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

