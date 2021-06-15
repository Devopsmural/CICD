#!/bin/bash
echo "Creating a new Dir to move the existing .jar file"
mv /tmp/slave1/CICD/CICD/samplejar/target/demo-1.0-SNAPSHOT.jar /tmp/slave1/rename/demo-1.0-SNAPSHOT-$(date +%F-%H:%M).jar
