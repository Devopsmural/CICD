#!/bin/bash
echo "Creating a new Dir to move the existing .jar file"
mkdir -p /tmp/slave1/rename_war/
mv /tmp/slave1/workspace/Demo_Pipeline/CICD/samplejar/target/demo-1.0-SNAPSHOT.jar /tmp/slave1/rename_war/demo-1.0-SNAPSHOT-$(date +%F-%H:%M).jar
