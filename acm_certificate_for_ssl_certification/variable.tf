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
variable "domain_name" {
  type        = string
  description = "Target domain name for the AWS managed SSL certification"
}

variable "certificate_tag" {
  type        = map(any)
  description = "Custom tags to attach the AWS managed SSL certification"
}
