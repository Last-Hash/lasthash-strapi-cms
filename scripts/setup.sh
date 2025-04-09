#!/bin/bash

# Update system packages
sudo apt update && sudo apt upgrade -y

# Install Node.js 18.x
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt install -y nodejs

# Install yarn and PM2
npm install -g yarn pm2

# Install nginx
sudo apt install -y nginx

# Create application directory
sudo mkdir -p /var/www/strapi-cms
sudo chown -R $USER:$USER /var/www/strapi-cms

# Copy Nginx configuration
sudo cp config/nginx/strapi.conf /etc/nginx/sites-available/strapi
sudo ln -s /etc/nginx/sites-available/strapi /etc/nginx/sites-enabled/
sudo nginx -t && sudo systemctl restart nginx

# Initial git setup
cd /var/www/strapi-cms
git clone https://github.com/Last-Hash/lasthash-strapi-cms.git .