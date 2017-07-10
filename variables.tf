variable "domain" {
    description = "Domain name of your website"
}

variable "index_file" {
    description = "What file is representing the index"

    default = "index.html"
}

variable "error_file" {
    description = "What file should be used when some 4xx error happens"

    default = "error.html"
}
