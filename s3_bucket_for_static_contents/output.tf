# ========================================
# // S3: Deployment Destiation of Next.js
# ========================================
output "created_bucket_arn" {
  value       = aws_s3_bucket.created_bucket.arn
  description = "Created S3 Bucket's ARN"
}

output "created_bucket_id" {
  value       = aws_s3_bucket.created_bucket.id
  description = "Created S3 Bucket's Name"
}
