#!/bin/bash
export password=$(aws ssm get-parameters --region us-east-1 --names patch_id --with-decryption --query Parameters[0].Value)
export password2=$(aws ssm get-parameters --region us-east-1 --names patch_id --with-decryption --query Parameters[0].Value)
sudo chmod -R 777 /var/www/html/index.html
echo $password >> /var/www/html/index.html
echo $password2 >> /var/www/html/index.html

