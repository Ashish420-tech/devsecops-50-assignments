# -----------------------------
# Provider
# -----------------------------
provider "aws" {
  region = "ap-south-1"
}

# -----------------------------
# Unique Bucket Name
# -----------------------------
resource "random_id" "bucket_id" {
  byte_length = 4
}

# -----------------------------
# KMS Key for Encryption
# -----------------------------
resource "aws_kms_key" "s3_key" {
  description         = "S3 bucket encryption key"
  enable_key_rotation = true
}

# -----------------------------
# Secure S3 Bucket
# -----------------------------
resource "aws_s3_bucket" "secure_bucket" {
  bucket = "ashish-secure-bucket-${random_id.bucket_id.hex}"

  tags = {
    Name        = "SecureBucket"
    Environment = "Prod"
  }
}

# -----------------------------
# Block Public Access
# -----------------------------
resource "aws_s3_bucket_public_access_block" "secure" {
  bucket = aws_s3_bucket.secure_bucket.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# -----------------------------
# Enable Versioning
# -----------------------------
resource "aws_s3_bucket_versioning" "versioning" {
  bucket = aws_s3_bucket.secure_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

# -----------------------------
# Enable KMS Encryption
# -----------------------------
resource "aws_s3_bucket_server_side_encryption_configuration" "encryption" {
  bucket = aws_s3_bucket.secure_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.s3_key.arn
      sse_algorithm     = "aws:kms"
    }
  }
}

# -----------------------------
# Access Logging
# -----------------------------
resource "aws_s3_bucket_logging" "logging" {
  bucket = aws_s3_bucket.secure_bucket.id

  target_bucket = aws_s3_bucket.secure_bucket.id
  target_prefix = "logs/"
}

# -----------------------------
# Lifecycle Policy
# -----------------------------
resource "aws_s3_bucket_lifecycle_configuration" "lifecycle" {
  bucket = aws_s3_bucket.secure_bucket.id

  rule {
    id     = "cleanup"
    status = "Enabled"

    expiration {
      days = 30
    }
  }
}
