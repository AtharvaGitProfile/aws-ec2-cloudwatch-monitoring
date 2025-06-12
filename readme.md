# AWS EC2 CloudWatch Monitoring Project

## Overview

This Terraform project provisions an EC2 instance with IAM role and CloudWatch monitoring, including alarms and SNS notifications for high CPU utilization.

## Resources Created

1. **IAM Role and Instance Profile**
   - Creates an IAM role with policies allowing EC2 to publish metrics to CloudWatch.
   - Creates an instance profile attached to the EC2 instance.
![alttext](https://github.com/AtharvaGitProfile/aws-ec2-cloudwatch-monitoring/blob/912f5ba30dd5cc2a3fa915611924b8c9ee0037f1/IAM%20Role%20HCL.png)

2. **EC2 Instance**
   - Launches an EC2 instance with specified AMI, instance type, and key pair.
   - Associates the IAM instance profile for CloudWatch access.
![alttext](https://github.com/AtharvaGitProfile/aws-ec2-cloudwatch-monitoring/blob/2a9d9b6f5b7382ab4f079f879ca2e08720f44c47/instance.png)

3. **CloudWatch Metric Alarm**
   - Sets a CPU utilization alarm that triggers when CPU usage exceeds 80%.
   - Alarm sends notifications via SNS.
![alttextt](https://github.com/AtharvaGitProfile/aws-ec2-cloudwatch-monitoring/blob/23e0c57941329b07930b41c6cd257c6bdf33bdb5/Alarm.png)


4. **SNS Topic and Subscription**
   - Creates an SNS topic for alarm notifications.
   - Subscribes an email endpoint to the SNS topic for alerts.
![alttext](https://github.com/AtharvaGitProfile/aws-ec2-cloudwatch-monitoring/blob/8d02f2c2a522f4af58b7625cc4b6476389a2bcf6/SNS%20Topic%20Subscription.png)

## Usage

- Clone the repository.
- Configure AWS credentials and region.
- Adjust `variables.tf` as needed (AMI ID, instance type, key pair name, etc.).
- Run `terraform init` to initialize the project.
- Run `terraform apply` and confirm to provision resources.
- Perform a CPU stress test on the EC2 instance to trigger alarms.
- Monitor the configured email subscription for SNS alarm notifications.

## Notes

- Ensured that the IAM user had permissions to manage IAM roles, EC2, CloudWatch, and SNS.
- The alarm evaluation period and threshold are configured in `main.tf`.
