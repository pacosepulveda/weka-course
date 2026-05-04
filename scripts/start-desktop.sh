#!/usr/bin/env bash
set -e

export DISPLAY=:1
export RESOLUTION=${RESOLUTION:-1600x900x24}

pkill Xvfb || true
pkill x11vnc || true
pkill websockify || true
pkill fluxbox || true

mkdir -p ~/.fluxbox

Xvfb :1 -screen 0 ${RESOLUTION} &
sleep 2

fluxbox &
sleep 2

x11vnc \
  -display :1 \
  -forever \
  -shared \
  -nopw \
  -rfbport 5901 \
  -noxdamage \
  -repeat \
  -xkb \
  -bg

websockify --web=/usr/share/novnc/ 6080 localhost:5901
