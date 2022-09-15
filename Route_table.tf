resource "aws_default_route_table" "route-table-public" {
  default_route_table_id = aws_vpc.main.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet-gateway.id
  }

  tags = {
    Name = "route-table-public"
  }
}


resource "aws_default_route_table" "route-table-private" {
  default_route_table_id = aws_vpc.main.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aaws_nat_gateway.vpc-nat-gateway.id
  }

  tags = {
    Name = "route-table-private"
  }
}
