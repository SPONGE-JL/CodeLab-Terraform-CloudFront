# ========================================
# // Provision execution
# ========================================
variable "region" {
  type        = string
  default     = "ap-northeast-2"
  description = "Target region name on provision"
}

# ========================================
# // Common
# ========================================
variable "common_tags" {
  type        = map(any)
  description = "System tags to be applied to all components."
}

# ========================================
# // Service
# ========================================
variable "svc_root_domain" {
  type        = string
  description = "Owned domain name for the website of service."
}

variable "svc_app_name" {
  type        = string
  description = "Target service application name"
}
