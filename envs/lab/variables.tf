variable "aws_region" {
  type        = string
  description = "AWS region for all resources. Fixed to us-east-1 by ADR-0002."
  default     = "us-east-1"
}