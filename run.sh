#!/bin/bash

cd /app

wkhtmltoimage \
    --transparent \
    --javascript-delay "${JS_DELAY}" \
    --format png \
    --quality 0 \
    clock.html clock.png