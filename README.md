Terraform module for S3 websites
================================

This is a terraform module that let's you create a website on AWS S3.

In AWS S3 it's possible to create a new bucket and set it up as a static
website, where the content of the bucket can be served via HTTP.
This can be useful if you have a static website and you don't want to manage
your own servers and scalability. S3 will take care of the availability and the
traffic of your website.

This terraform module simplifies the creation of it.

Input variables
---------------

- `domain` - The domain of the website
- `index_file` - The file that is considered as index (optional, default "index.html")
- `error_file` - The file that will be served for 4xx errors (optional, default "error.html")

Usage
-----

This is a short example on how you can use the module in a simple template file,
e.g. `main.tf`.

```
module "www-bucket" {
    source = "github.com/fallertsen/terraform-module-aws-s3-website"

    domain = "www.example.com"
}
```

This will create a new bucket called `www.example.com` ready to be used as a
website.

Output variables
----------------

- `website\_endpoint` - The full hostname where the website can be accessed
- `website\_domain` - The domain of the endpoint, this is used for Route53 alias records
- `hosted\_zone\_id` - The Route53 hosted zone id of the bucket region
