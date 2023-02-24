# ========================================
# // Provision execution
# ========================================
variable "region" {
  type        = string
  default     = "ap-northeast-2"
  description = "Target region name on provision"
}

# ========================================
# // Amazon S3 Bucket
# ========================================
variable "bucket_name" {
  type        = string
  description = "Specific Amazon S3 bucket name"
}

variable "bucket_tags" {
  type        = map(any)
  description = "Custom tags to attach the Amazon S3 bucket"
}
