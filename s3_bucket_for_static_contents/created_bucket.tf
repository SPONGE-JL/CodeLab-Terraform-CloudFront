# ========================================
# // Amazon S3 Bucket
# ========================================
resource "aws_s3_bucket" "created_bucket" {
  bucket        = var.bucket_name
  force_destroy = true

  tags = var.bucket_tags
}

# ========================================
# // Diasble ACLs on bucket object
# ========================================
resource "aws_s3_bucket_ownership_controls" "created_bucket_disable_acls_with_enforcing_only_owner" {
  bucket = aws_s3_bucket.created_bucket.id

  #! Ref. https://docs.aws.amazon.com/AmazonS3/latest/userguide/about-object-ownership.html#object-ownership-overview
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

# ========================================
# // Block all public access on bucket
# ========================================
resource "aws_s3_bucket_public_access_block" "created_bucket_block_all_public_access" {
  bucket = aws_s3_bucket.created_bucket.id

  #! Ref. https://docs.aws.amazon.com/AmazonS3/latest/userguide/access-control-block-public-access.html
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
