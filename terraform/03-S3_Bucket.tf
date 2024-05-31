resource "aws_s3_bucket" "this" {
    bucket = "pf-is-${local.prefix}-vpc-flow-log"
    tags = {
      "Name" = "${local.prefix}-s3-bucket"
      Environment = local.env
      Path        = "${basename(abspath(path.module))}/03-S3_Bucket.tf"
    }
}