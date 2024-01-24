#!/bin/bash

DB_HOST=$1
DB_PASSWORD=$2
DB_NAME=$3
AWS_SECRET=$4
BUCKET_NAME=$5
FILE_NAME="/db-$(date +"%Y-%m-%d-%H-%M")"
mysqldump -u root -h $DB_HOST -p$DB_PASSWORD $DB_NAME > /tmp/$FILE_NAME.sql &&\
export AWS_ACCESS_KEY_ID=AKIAQ6CLXXBN2JYDTIP7  &&\ 
export AWS_SECRET_ACCESS_KEY=$AWS_SECRET &&\
echo "uploading $FILE_NAME ..." &&\
aws s3 cp /tmp/$FILE_NAME.sql s3://$BUCKET_NAME$FILE_NAME

