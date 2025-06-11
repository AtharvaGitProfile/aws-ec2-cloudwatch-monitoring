variable "aws-region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for Amazon Linux 2"
  default     = "ami-0c94855ba95c71c99" # Update if needed
}

variable "key_name" {
  default = "cloudprojectkey"
}