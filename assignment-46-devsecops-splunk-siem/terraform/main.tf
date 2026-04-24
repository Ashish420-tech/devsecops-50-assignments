resource "aws_s3_bucket" "logs" {
  bucket = "devsecops-splunk-logs"
}
resource "aws_cloudtrail" "main" {
  name           = "devsecops-trail"
  s3_bucket_name = aws_s3_bucket.logs.id
}
