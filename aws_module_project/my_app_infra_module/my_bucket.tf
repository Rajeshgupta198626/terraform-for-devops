resource "aws_s3_bucket" "my_app_bucket" {
    bucket = "${var.my_env}-bucket9856"
    tags = {
        Name = "${var.my_env}-bucket9856"
    }
}