# ========================================
# // Provision execution
# ========================================
variable "region" {
  type        = string
  default     = "ap-northeast-2"
  description = "Target region name on provision"
}

# ========================================
# // Amazon CloudFront
# ========================================
variable "domain_name" {
  type        = string
  description = "Owned domain name for the website of service."
}

variable "distribution_tags" {
  type        = map(any)
  description = "Custom tags to attach the Amazon CloudFront"
}

# ========================================
# // SSL
# ========================================
variable "acm_certificate_arn" {
  type        = string
  description = "SSL - AWS Certificate Manager(ACM) certificate arn"
}

# ========================================
# // Origin
# ========================================
variable "origin_s3_bucket_arn" {
  type        = string
  description = "Origin - Amazon S3 bucket arn"
}

variable "origin_s3_bucket_id" {
  type        = string
  description = "Origin - Amazon S3 bucket id"
}
