# AWS EC2 CloudWatch Monitoring Project

## Overview

This Terraform project provisions an EC2 instance with IAM role and CloudWatch monitoring, including alarms and SNS notifications for high CPU utilization.

## Resources Created

1. **IAM Role and Instance Profile**
   - Creates an IAM role with policies allowing EC2 to publish metrics to CloudWatch.
   - Creates an instance profile attached to the EC2 instance.

2. **EC2 Instance**
   - Launches an EC2 instance with specified AMI, instance type, and key pair.
   - Associates the IAM instance profile for CloudWatch access.

3. **CloudWatch Metric Alarm**
   - Sets a CPU utilization alarm that triggers when CPU usage exceeds 80%.
   - Alarm sends notifications via SNS.

4. **SNS Topic and Subscription**
   - Creates an SNS topic for alarm notifications.
   - Subscribes an email endpoint to the SNS topic for alerts.

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