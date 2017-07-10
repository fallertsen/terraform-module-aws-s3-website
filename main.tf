resource "aws_s3_bucket" "www-bucket" {
    bucket = "${var.domain}"
    acl    = "private"
    policy = <<EOF
{
  "Version":"2012-10-17",
  "Statement":[{
    "Sid":"PublicReadGetObject",
    "Effect":"Allow",
    "Principal": "*",
    "Action":["s3:GetObject"],
    "Resource":["arn:aws:s3:::${var.domain}/*"]
  }]
}
EOF

    website {
        index_document = "${var.index_file}"
        error_document = "${var.error_file}"
    }
}
