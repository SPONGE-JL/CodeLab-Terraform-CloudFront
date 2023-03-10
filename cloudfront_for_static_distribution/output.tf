# ========================================
# // AWS CloudFront Distribution
# ========================================
output "distribution_domain_name" {
  value       = aws_cloudfront_distribution.distribution.domain_name
  description = "CloudFront Distribution's managed domain name - A record"
}

output "distribution_viewer_certificate" {
  value       = aws_cloudfront_distribution.distribution.viewer_certificate
  description = "CloudFront Distribution's SSL certificate"
}

output "distribution_id" {
  value       = aws_cloudfront_distribution.distribution.id
  description = "CloudFront Distribution's ID"
}
