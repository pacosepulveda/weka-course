#!/usr/bin/env bash
set -e

export DISPLAY=:1

export WEKA_HOME=/workspaces/weka-course/.weka
export WEKA_PACKAGE_DIR=/workspaces/weka-course/.weka/packages
export WEKA_NATIVE_LIBS=/workspaces/weka-course/.weka/native
export WEKA_REPOSITORY_CACHE=/workspaces/weka-course/.weka/repCache

mkdir -p "$WEKA_PACKAGE_DIR"
mkdir -p "$WEKA_NATIVE_LIBS"
mkdir -p "$WEKA_REPOSITORY_CACHE"
mkdir -p /workspaces/weka-course/student-work

cd /workspaces/weka-course

java -Xmx2g -Duser.home=/workspaces/weka-course -jar /opt/weka/weka.jar
