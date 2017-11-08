variable "s3_bucket" {
  description = "The name of the bucket containing your uploaded lambda deployment package."
}

variable "s3_key" {
  description = "The s3 key for your Lambda deployment package."
}

variable "function_name" {
  description = "The name of the lambda function."
}

variable "handler" {
  description = "The function within your code that Lambda calls to begin execution."
}

variable "runtime" {
  description = "The runtime environment for the Lambda function you are uploading."
}

variable "timeout" {
  description = "The maximum time in seconds that the lambda can run for"
  default     = 3
}

variable "lambda_env" {
  description = "Environment parameters passed to the lambda function."
  type        = "map"
  default     = {}
}

variable "lambda_iam_policy_name" {
  description = "The name for the Lambda functions IAM policy."
}

variable "subnet_ids" {
  type        = "list"
  description = "The VPC subnets in which the lambda runs"
  default     = []
}

variable "security_group_ids" {
  type        = "list"
  description = "The VPC security groups assigned to the lambda"
  default     = []
}
