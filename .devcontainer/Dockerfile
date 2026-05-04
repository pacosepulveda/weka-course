FROM mcr.microsoft.com/devcontainers/base:ubuntu-22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV WEKA_VERSION=3-8-6
ENV WEKA_HOME=/opt/weka
ENV DISPLAY=:1
ENV RESOLUTION=1600x900x24

RUN apt-get update && apt-get install -y \
    openjdk-17-jre \
    wget \
    curl \
    unzip \
    git \
    python3 \
    python3-pip \
    xvfb \
    x11vnc \
    novnc \
    websockify \
    fluxbox \
    xterm \
    dbus-x11 \
    libxrender1 \
    libxtst6 \
    libxi6 \
    libxext6 \
    libxrandr2 \
    libfreetype6 \
    fonts-dejavu \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p ${WEKA_HOME} \
    && wget -O /tmp/weka.zip https://prdownloads.sourceforge.net/weka/weka-${WEKA_VERSION}-azul-zulu-linux.zip \
    && unzip /tmp/weka.zip -d /opt \
    && find /opt -maxdepth 1 -type d -name "weka-*" -exec cp -r {}/. ${WEKA_HOME}/ \; \
    && rm -rf /tmp/weka.zip

RUN ln -s ${WEKA_HOME}/weka.jar /usr/local/bin/weka.jar

WORKDIR /workspaces/weka-codespaces-course
