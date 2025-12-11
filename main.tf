
resource "aws_s3_bucket" "my_bucket" {
bucket = var.bucket_name  # must be globally unique

tags = {
Name        = "Terraform-S3"
Environment = "Dev"
}
}

resource "aws_s3_bucket_versioning" "versioning" {
bucket = aws_s3_bucket.my_bucket.id

versioning_configuration {
status = "Enabled"
}
}
