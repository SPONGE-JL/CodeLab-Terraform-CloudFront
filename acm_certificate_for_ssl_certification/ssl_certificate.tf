# ========================================
# // Amazon Certificate Manager
# ========================================
resource "aws_acm_certificate" "ssl_certificate" {
  #! Ref. https://docs.amazonaws.cn/en_us/acm/latest/userguide/dns-validation.html
  provider                  = aws
  validation_method         = "DNS"
  domain_name               = var.domain_name
  subject_alternative_names = ["*.${var.domain_name}"]

  lifecycle {
    create_before_destroy = true
  }

  tags = merge(var.certificate_tag, {
    Name = var.domain_name
  })
}

# ========================================
# // Certificate Validation
# ========================================
resource "aws_acm_certificate_validation" "ssl_certificate_validation" {
  certificate_arn = aws_acm_certificate.ssl_certificate.arn
}
