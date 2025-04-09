#!/bin/bash

# Stop execution if a command fails
set -e

# Navigate to app directory
cd /var/www/strapi-cms

# Pull latest changes
git pull origin main

# Install dependencies
yarn install

# Build the application
yarn build

# Restart PM2 process
pm2 restart strapi

echo "Deployment completed successfully!"