provider "aws" {
  region = "us-east-1"
  access_key = "6Ix63Ba7HV"
  secret_key = "6Ix63Ba7HV"
  skip_credentials_validation = true
  skip_requesting_account_id = true
  skip_metadata_api_check = true
  s3_force_path_style = true
  
  endpoints {
      s3 = "http://localhost:4566"
  }
  
}
 
resource "aws_s3_bucket" "b" {
  bucket = "scanbuy-s3-static-web"
  acl = "public-read"
}

resource "aws_s3_bucket_object" "index"{
    bucket = aws_s3_bucket.b.id
    key = "index.html"
    acl = "public-read"
    source = "index.html"
    content_type = "text/html"

}

resource "aws_s3_bucket_object" "error"{
    bucket = aws_s3_bucket.b.id
    key = "error.html"
    acl = "public-read"
    source = "error.html"
    content_type = "text/html"

}

