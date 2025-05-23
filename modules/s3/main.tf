resource "aws_s3_bucket" "file_storage" {
  bucket = "${var.environment}-prism-file-storage"
  tags = {
    Name = "${var.environment}-prism-file-storage"
  }
}

resource "aws_s3_bucket" "static_assets" {
  bucket = "${var.environment}-prism-static-assets"
  tags = {
    Name = "${var.environment}-prism-static-assets"
  }
}
