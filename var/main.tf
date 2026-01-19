provider "aws" {
    region = "us-east-1"  # Set your desired AWS region
}

variable "ami_id" {
    description = "The AMI ID for the EC2 instance"
    type        = string
    default     = "ami-07ff62358b87c7116"  # Default AMI ID
  
}

variable "instance_type" {
    description = "The type of instance to use"
    type        = string
    default     = "t3.micro"
  
}

variable "key_value" {
    description = "The key name for the EC2 instance"
    type        = string
    default     = "learning"
  
}

resource "aws_instance" "example" {
    ami           = var.ami_id  # Specify an appropriate AMI ID
    instance_type = var.instance_type
    key_name   = var.key_value
}

output "public_ip" {
    description = "The public IP address of the EC2 instance"
    value       = aws_instance.example.public_ip
  
}