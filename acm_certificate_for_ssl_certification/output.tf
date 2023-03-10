# ========================================
# // ACM: Managed SSL Certification
# ========================================
output "ssl_certi_status" {
  value       = aws_acm_certificate.ssl_certificate.status
  description = "SSL certificate's validation status"
}

output "ssl_certi_validation_method" {
  value       = aws_acm_certificate.ssl_certificate.validation_method
  description = "SSL certificate's validation method"
}

output "ssl_certi_domain_name" {
  value       = aws_acm_certificate.ssl_certificate.domain_name
  description = "SSL certificate's domain name"
}

output "ssl_certi_certificate_chain" {
  value       = aws_acm_certificate.ssl_certificate.certificate_chain
  description = "SSL certificate's chain domain name"
}

output "ssl_certi_arn" {
  value       = aws_acm_certificate.ssl_certificate.arn
  description = "SSL certificate's ARN"
}
