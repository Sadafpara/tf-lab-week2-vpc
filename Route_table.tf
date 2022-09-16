
resource "aws_route_table" "route-table-public" {
    vpc_id = aws_vpc.main.id


  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }

  tags = {
    Name = "route-table-public"
  }
}


resource "aws_route_table" "route-table-private" {
      vpc_id = aws_vpc.main.id
 

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.vpc-nat-gateway.id
  }

  tags = {
    Name = "route-table-private"
  }
}



