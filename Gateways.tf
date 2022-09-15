
resource "aws_nat_gateway" "vpc-nat-gateway" {
  allocation_id = aws_eip.EIP.id
  subnet_id     = aws_subnet.public-subnet1.id

  tags = {
    Name = "Gateway NAT"
  }
 
  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.internet-gateway]
}



resource "aws_internet_gateway" "internet-gateway" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "internet-gateway"
  }
}


resource "aws_eip" "EIP" {
  vpc      = true
}