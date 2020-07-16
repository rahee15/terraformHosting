resource "aws_s3_bucket" "groot" {
  bucket = "hire.pirimidtech.com"
  acl    = "public-read"
  region = "ap-south-1"

  website {
    index_document = "index.html"
    error_document = "index.html"

    routing_rules = <<EOF
[{
    "Condition": {
        "KeyPrefixEquals": "docs/"
    },
    "Redirect": {
        "ReplaceKeyPrefixWith": "documents/"
    }
}]
EOF
  }
}