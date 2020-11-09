#!/usr/bin/bash

sudo novnc --listen 6081 --vnc localhost:59901 --cert /etc/letsencrypt/live/ical197.ical.tw/fullchain.pem --key /etc/letsencrypt/live/ical197.ical.tw/privkey.pem
