#!/bin/bash
export PATH=$PATH:/home/ubuntu/.nvm/versions/node/v22.3.0/bin

cd /home/ubuntu/Monorepo-Deploy
git pull origin main
npm run build
pm2 stop react
pm2 start npm --name "react" -- run "start:react"