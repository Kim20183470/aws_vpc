# Create a VPC
resource "aws_vpc" "terra_vpc" {
  cidr_block = var.cidr_network
  tags = {
    Name      = "terra_vpc-bo-05"
    createdBy = "BSOP05"
  }
}

resource "aws_internet_gateway" "terra_ig" {
  vpc_id = aws_vpc.terra_vpc.id
}
