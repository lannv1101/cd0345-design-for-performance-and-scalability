# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity-T2" {
  ami = "ami-04581fbf744a7d11f"
  instance_type = "t2.micro"
  subnet_id = "subnet-088ce60e7b5471aa0"
  count = 4
  tags = {
    Name = "Udacity T2"
  }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "Udacity-M4" {
  ami = "ami-04581fbf744a7d11f"
  instance_type = "m4.large"
  subnet_id = "subnet-088ce60e7b5471aa0"
  count = 2
  tags = {
    Name = "Udacity M4"
  }
}
