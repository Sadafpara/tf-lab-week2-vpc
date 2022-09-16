resource "aws_route_table_association" "subnet-association-public1" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.route-table-public.id
}

resource "aws_route_table_association" "subnet-association-public2" {
  subnet_id      = aws_subnet.public-subnet2.id
  route_table_id = aws_route_table.route-table-public.id
}

resource "aws_route_table_association" "subnet-association-public3" {
  subnet_id      = aws_subnet.public-subnet3.id
  route_table_id = aws_route_table.route-table-public.id
}


# PRIVATE ASSOCIATION
resource "aws_route_table_association" "subnet-association-private1" {
  subnet_id      = aws_subnet.private-subnet1.id
  route_table_id = aws_route_table.route-table-private.id
}


resource "aws_route_table_association" "subnet-association-private2" {
  subnet_id      = aws_subnet.private-subnet2.id
  route_table_id = aws_route_table.route-table-private.id
}

resource "aws_route_table_association" "subnet-association-private3" {
  subnet_id      = aws_subnet.private-subnet3.id
  route_table_id = aws_route_table.route-table-private.id
}
