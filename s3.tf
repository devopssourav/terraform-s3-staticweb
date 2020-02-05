resource "aws_s3_bucket" "SK" {
  bucket = "devopssourav-test"
  acl    = "public-read"

  website {
    index_document = "index.html"

  }
}


resource "aws_s3_bucket_object" "index" {
    bucket = "${aws_s3_bucket.SK.bucket}"
    key = "index.html"
    #content = "<h1>Welcome Devops Sourav IAC webpage!</h1>"
    source ="index.html"
    content_type = "text/html"
    acl    = "public-read"
}

