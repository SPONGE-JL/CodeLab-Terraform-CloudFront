locals {
  domain_name = "${var.svc_app_name}.${var.svc_root_domain}"
}

# ========================================
# // CF: Contents Delivery Network
# ========================================
module "distribution" {
  source = "./cloudfront_for_static_distribution"

  region            = var.region
  domain_name       = local.domain_name
  distribution_tags = var.common_tags

  # ACM
  acm_certificate_arn = module.ssl_certi_for_distribution.ssl_certi_arn

  # Origin
  origin_s3_bucket_arn = module.statics_destination.created_bucket_arn
  origin_s3_bucket_id  = module.statics_destination.created_bucket_id
}

# ========================================
# // ACM: Managed SSL Certification
# ========================================
module "ssl_certi_for_distribution" {
  source = "./acm_certificate_for_ssl_certification"

  region          = var.region
  domain_name     = local.domain_name
  certificate_tag = var.common_tags
}

# ========================================
# // S3: Deployment Destiation
# ========================================
module "statics_destination" {
  source = "./s3_bucket_for_static_contents"

  region      = var.region
  bucket_name = local.domain_name
  bucket_tags = var.common_tags
}
