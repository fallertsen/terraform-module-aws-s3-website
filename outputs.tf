output "website_endpoint" {
    value = "${aws_s3_bucket.www-bucket.website_endpoint}"
}

output "website_domain" {
    value = "${aws_s3_bucket.www-bucket.website_domain}"
}

output "hosted_zone_id" {
    value = "${aws_s3_bucket.www-bucket.hosted_zone_id}"
}
