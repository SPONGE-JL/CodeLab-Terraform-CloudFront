# ========================================
# // S3: Deployment Destiation of Next.js
# ========================================
output "created_bucket_name" {
  value = aws_s3_bucket.created_bucket.bucket_domain_name
}

output "created_bucket_arn" {
  value = aws_s3_bucket.created_bucket.arn
}

output "created_bucket_id" {
  value = aws_s3_bucket.created_bucket.id
}
