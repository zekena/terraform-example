provider "aws" {
  region                  = "eu-central-1"
  shared_credentials_file = "/home/zkenawi/.aws/credentials"
  profile                 = "zekena"
}

resource "aws_instance" "example" {
  ami           = "ami-0502e817a62226e03"
  instance_type = "t2.micro"

  tags = {
    Name = "terraform-example"
  }
}
