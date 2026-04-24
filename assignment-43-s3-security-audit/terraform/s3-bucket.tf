# -----------------------------
# Provider Configuration
# -----------------------------
provider "aws" {
  region = "ap-south-1"
}

# -----------------------------
# Generate Unique Bucket Name
# -----------------------------
resource "random_id" "bucket_id" {
  byte_length = 4
}

# -----------------------------
# Insecure S3 Bucket (INTENTIONAL)
# -----------------------------
resource "aws_s3_bucket" "insecure_bucket" {
  bucket = "ashish-insecure-bucket-${random_id.bucket_id.hex}"

  tags = {
    Name        = "InsecureBucket"
    Environment = "Dev"
  }
}

# -----------------------------
# ❌ Public Access Enabled (CRITICAL)
# -----------------------------
resource "aws_s3_bucket_public_access_block" "insecure" {
  bucket = aws_s3_bucket.insecure_bucket.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

# -----------------------------
# ❌ Public Read ACL (CRITICAL)
# -----------------------------
resource "aws_s3_bucket_acl" "acl" {
  bucket = aws_s3_bucket.insecure_bucket.id
  acl    = "public-read"
}

# -----------------------------
# ❌ Missing Security Controls
# -----------------------------
# - No Server-Side Encryption
# - No Versioning
# - No Logging
# - No Bucket Policy Restrictions
