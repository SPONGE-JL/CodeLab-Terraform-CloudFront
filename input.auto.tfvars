# ========================================
# // Provision execution
# ========================================
region = "ap-northeast-2"

# ========================================
# // Common
# ========================================
common_tags = {
  category     = "codelab"
  project      = "cloudfront-for-next-js"
  immutability = "using-terraform"
}

# ========================================
# // Service
# ========================================
svc_root_domain = "poc-in.site"
svc_app_name    = "day1"
