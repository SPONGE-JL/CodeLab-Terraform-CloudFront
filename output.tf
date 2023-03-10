# ========================================
# // CF: Contents Delivery Network
# ========================================
output "dist_domain_name_for_CNAME_name" {
  value       = "${local.domain_name}."
  description = "[dist] DNS CNAME name part"
}

output "dist_domain_name_for_CNAME_value" {
  value       = "${module.distribution.distribution_domain_name}."
  description = "[dist] DNS CNAME value part"
}

output "dist_viewer_certificate" {
  value       = module.distribution.distribution_viewer_certificate
  description = "[dist] Selected SSL certificate"
}

output "dist_id_for_refresh" {
  value       = module.distribution.distribution_id
  description = "[dist] Target Distribution ID for refreshing the cache"
}

# ========================================
# // ACM: Managed SSL Certification
# ========================================
output "ssl_certi_status" {
  value       = module.ssl_certi_for_distribution.ssl_certi_status
  description = "[ssl_serti] Validation Status - ISSUED(checked) / Pending(in-progress) / Fail"
}

output "ssl_certi_validation_method" {
  value       = module.ssl_certi_for_distribution.ssl_certi_validation_method
  description = "[ssl_serti] Validation Method - DNS, Email"
}

output "ssl_certi_domain_name" {
  value       = module.ssl_certi_for_distribution.ssl_certi_domain_name
  description = "[ssl_serti] main domain name"
}

output "ssl_certi_certificate_chain" {
  value       = module.ssl_certi_for_distribution.ssl_certi_certificate_chain
  description = "[ssl_serti] chain domain name"
}

# ========================================
# // S3: Deployment Destiation
# ========================================
output "statics_destination_bucket_name" {
  value       = module.statics_destination.created_bucket_id
  description = "[statics_destation] S3 Bucket name to deploy the static contents"
}
