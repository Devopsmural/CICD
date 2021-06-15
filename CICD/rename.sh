#!/bin/bash
echo "Creating a new Dir to move the existing .war file"
mkdir -p /tmp/slave1/snap-shot-war/
mv /tmp/slave1/workspace/Demo_Pipeline/CICD/samplewar/target/samplewar.war /tmp/slave1/snap-shot-war/samplewar-$(date +%F-%H:%M).war
