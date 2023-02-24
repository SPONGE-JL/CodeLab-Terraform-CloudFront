# ========================================
# // S3: Deployment Destiation of Next.js
# ========================================
module "static_destination" {
  source = "./s3_bucket_for_static_contents"
  region = var.region

  bucket_name = "${var.svc_app_name}.${var.svc_root_domain}"
  bucket_tags = var.common_tags
}

resource "aws_s3_bucket_cors_configuration" "www_bucket_cors" {
  depends_on = [module.static_destination]
  bucket     = module.static_destination.bucket_id

  # ! Ref > https://docs.aws.amazon.com/AmazonS3/latest/userguide/cors.html
  cors_rule {
    allowed_headers = ["Authorization", "Content-Length"]
    allowed_methods = ["GET", "POST"]
    allowed_origins = ["https://*.${var.svc_root_domain}"]
    max_age_seconds = 3000
  }
}
