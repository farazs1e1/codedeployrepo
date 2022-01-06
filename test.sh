#!/bin/bash
export password=$(aws ssm get-parameters --region us-east-1 --names patch_id --with-decryption --query Parameters[0].Value)
sudo chmod 777  /var/www/html/index.html
echo $password >> /var/www/html/index.html

