#!/usr/bin/env bash
set -e

export DISPLAY=:1
cd /workspaces/weka-codespaces-course

java -Xmx2g -jar /opt/weka/weka.jar
