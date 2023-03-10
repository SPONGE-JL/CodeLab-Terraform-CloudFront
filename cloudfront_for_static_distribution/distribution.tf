# ========================================
# // AWS CloudFront Distribution
# ========================================
data "aws_s3_bucket" "distribution_origin_bucket" {
  bucket = var.domain_name
}

resource "aws_cloudfront_distribution" "distribution" {

  origin {
    domain_name              = data.aws_s3_bucket.distribution_origin_bucket.bucket_domain_name
    origin_id                = var.origin_s3_bucket_id
    origin_access_control_id = aws_cloudfront_origin_access_control.distribution_oac.id

    # custom_origin_config {
    #   http_port              = 80
    #   https_port             = 443
    #   origin_protocol_policy = "http-only"
    #   origin_ssl_protocols   = ["TLSv1", "TLSv1.1", "TLSv1.2"]
    # }
  }
  enabled             = true
  default_root_object = "index.html"

  aliases = [var.domain_name]

  custom_error_response {
    error_caching_min_ttl = 0
    error_code            = 404
    response_code         = 200
    response_page_path    = "/404.html"
  }

  default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = var.origin_s3_bucket_id

    origin_request_policy_id = data.aws_cloudfront_origin_request_policy.distribution_policy_org_req.id
    cache_policy_id          = data.aws_cloudfront_cache_policy.distribution_policy_cache.id

    # forwarded_values {
    #   query_string = false

    #   cookies {
    #     forward = "none"
    #   }
    # }

    viewer_protocol_policy = "redirect-to-https"
    min_ttl                = 31536000
    default_ttl            = 31536000
    max_ttl                = 31536000
    compress               = true
  }

  restrictions {
    geo_restriction {
      restriction_type = "whitelist"
      locations        = ["KR"] # List of 2-letter country codes (https://www.iso.org/obp/ui/#search)
    }
  }

  viewer_certificate {
    acm_certificate_arn      = var.acm_certificate_arn
    ssl_support_method       = "sni-only"
    minimum_protocol_version = "TLSv1.1_2016"
  }

  tags = var.distribution_tags
}

# ========================================
# // AWS CloudFront Origin Access Control - https://aws.amazon.com/ko/about-aws/whats-new/2022/08/amazon-cloudfront-origin-access-control
# ========================================
resource "aws_cloudfront_origin_access_control" "distribution_oac" {
  name                              = "oac-${var.domain_name}"
  description                       = "distribution - Origin Access Control"
  origin_access_control_origin_type = "s3"
  signing_behavior                  = "always"
  signing_protocol                  = "sigv4"
}

# ========================================
# // AWS CloudFront Policy
# ========================================
data "aws_cloudfront_origin_request_policy" "distribution_policy_org_req" {
  name = "Managed-CORS-S3Origin"
}

data "aws_cloudfront_cache_policy" "distribution_policy_cache" {
  name = "Managed-CachingOptimized"
}

# ========================================
# // S3 Policy
# ========================================
resource "aws_s3_bucket_policy" "distribution_related_bucket_policy" {
  bucket = var.origin_s3_bucket_id
  policy = data.aws_iam_policy_document.distribution_related_bucket_policy_doc.json
}

data "aws_iam_policy_document" "distribution_related_bucket_policy_doc" {
  statement {
    effect    = "Allow"
    actions   = ["s3:GetObject"]
    resources = ["${var.origin_s3_bucket_arn}/*"]

    principals {
      type        = "Service"
      identifiers = ["cloudfront.amazonaws.com"]
    }
    condition {
      test     = "StringEquals"
      variable = "AWS:SourceArn"
      values   = [aws_cloudfront_distribution.distribution.arn]
    }
  }
}

# ========================================
# // S3 Bucket CORS - https://docs.aws.amazon.com/AmazonS3/latest/userguide/cors.html
# ========================================
resource "aws_s3_bucket_cors_configuration" "distribution_related_bucket_cors_config" {
  bucket = var.origin_s3_bucket_id

  cors_rule {
    allowed_headers = ["Authorization", "Content-Length"]
    allowed_methods = ["GET", "POST"]
    allowed_origins = ["https://*.${var.domain_name}"]
    max_age_seconds = 3000
  }
}
