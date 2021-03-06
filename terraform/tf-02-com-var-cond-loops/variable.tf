variable "ec2_name" {
  default = "smn-ec2"
}

variable "ec2_type" {
  default = "t2.micro"
}

variable "ec2_ami" {
  default = "ami-0742b4e673072066f"
}

variable "s3_bucket_name" {
  default = "smnckr-s3-bucket-variable-addwhateveryouwant"
}