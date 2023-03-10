# ========================================
# // ACM: Managed SSL Certification
# ========================================
output "ssl_certi_status" {
  value = aws_acm_certificate.ssl_certificate.status
}

output "ssl_certi_validation_method" {
  value = aws_acm_certificate.ssl_certificate.validation_method
}

output "ssl_certi_domain_name" {
  value = aws_acm_certificate.ssl_certificate.domain_name
}

output "ssl_certi_certificate_chain" {
  value = aws_acm_certificate.ssl_certificate.certificate_chain
}

output "ssl_certi_arn" {
  value = aws_acm_certificate.ssl_certificate.arn
}
