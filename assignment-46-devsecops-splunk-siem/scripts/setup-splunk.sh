#!/bin/bash
docker pull splunk/splunk:latest
docker run -d -p 8000:8000 -p 8088:8088 \
-e SPLUNK_START_ARGS="--accept-license" \
-e SPLUNK_PASSWORD="Admin123!" \
splunk/splunk:latest
