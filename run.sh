#!/bin/bash

cd /app

wkhtmltoimage --transparent --javascript-delay 3000 \
    --format png --quality 0 clock.html clock.png

