
#!/bin/bash



#########
# Author : Dinesh
# Date : 16 june
# Version : V1
#
# this script will report the aws usage (Aws resource tracker using shell scripting)
#######


set -x

# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users


# list s3 buckets
echo "print list of s3 buckets "
aws s3 ls


# list ec2 instances
echo "print list of ec2 instances"
aws ec2 describe-instances

# list lambda
echo "print list of lambda functions"
aws lambda list-functions

# list IAM Users
echo "print list of IAM users"
aws iam list-users


# to get the instances Id running
echo "list instance Id"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId'






cronttab -l

crontab -e

chmod +x aws_resource_tracker.sh

0 15 * * * /path/to/aws_resource_tracker.sh >> /path/to/aws_resource_tracker.log 2>&1



