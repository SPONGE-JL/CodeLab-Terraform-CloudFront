# ========================================
# // CF: Contents Delivery Network
# ========================================
output "dist_domain_name" {
  value = module.distribution.distribution_domain_name
}

output "dist_viewer_certificate" {
  value = module.distribution.distribution_viewer_certificate
}

# ========================================
# // ACM: Managed SSL Certification
# ========================================
output "ssl_certi_status" {
  value = module.ssl_certi_for_distribution.ssl_certi_status
}

output "ssl_certi_validation_method" {
  value = module.ssl_certi_for_distribution.ssl_certi_validation_method
}

output "ssl_certi_domain_name" {
  value = module.ssl_certi_for_distribution.ssl_certi_domain_name
}

output "ssl_certi_certificate_chain" {
  value = module.ssl_certi_for_distribution.ssl_certi_certificate_chain
}

# ========================================
# // S3: Deployment Destiation
# ========================================
output "statics_destination_bucket_name" {
  value = module.statics_destination.created_bucket_name
}
