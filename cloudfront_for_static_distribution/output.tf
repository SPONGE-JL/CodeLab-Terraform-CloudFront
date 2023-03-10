# ========================================
# // AWS CloudFront Distribution
# ========================================
output "distribution_domain_name" {
  value = aws_cloudfront_distribution.distribution.domain_name
}

output "distribution_viewer_certificate" {
  value = aws_cloudfront_distribution.distribution.viewer_certificate
}

output "distribution_id" {
  value = aws_cloudfront_distribution.distribution.id
}