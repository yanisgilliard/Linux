#!/bin/bash
# Created : 2023-01-11 at 12am
# yanis
# Simple script of backup for nextcloud
fileName="nextcloud_$(date +%Y%m%d%H%M%S).tar.gz"
tar -czf /srv/backup/$fileName /var/www/tp5_nextcloud/
echo "Filename : $fileName saved in /srv/backup"
