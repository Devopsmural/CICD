#!/bin/bash
echo "Creating a new Dir to move the existing .war file"
mkdir -p /home/ubuntu/krish/
mv /murali/CICD/workspace/CICD/CICD/samplejar/target/demo-1.0-SNAPSHOT.jar /home/ubuntu/krish/demo-1.0-SNAPSHOT-$(date +%F-%H:%M).jar
