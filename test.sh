#!/bin/bash
password=$(aws ssm get-parameters --region us-east-1 --names patch_id --with-decryption --query Parameters[0].Value)
echo $password > /var/www/html/index.html
