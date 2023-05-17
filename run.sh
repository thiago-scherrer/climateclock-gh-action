#!/bin/bash

cd /app

wkhtmltoimage --transparent --javascript-delay 3000 \
    --format png --quality 0 clock.html clock.png

git config --global user.name "GitHub Actions"
git config --global user.email "actions@github.com"
git add clock.png
git commit -m "chore: clock update"
git push origin main