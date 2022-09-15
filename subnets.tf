resource "aws_subnet" "public-subnet1" {
  availability_zone = "eu-central-1a"
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.1.0/24"


  tags = {
    Name = "public-subnet1 for u-central-1a"
  }
}

resource "aws_subnet" "public-subnet2" {
  availability_zone = "eu-central-1b"
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.2.0/24"


  tags = {
    Name = "public-subnet2 for u-central-1b"
  }
}


resource "aws_subnet" "public-subnet3" {
  availability_zone = "eu-central-1c"
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.3.0/24"


  tags = {
    Name = "public-subnet3 for u-central-1c"
  }
}



#PRIVATE SUBNETS

resource "aws_subnet" "private-subnet1" {
  availability_zone = "eu-central-1a"
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.11.0/24"


  tags = {
    Name = "private-subnet1 for u-central-1a"
  }
}

resource "aws_subnet" "private-subnet2" {
  availability_zone = "eu-central-1b"
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.12.0/24"


  tags = {
    Name = "private-subnet2 for u-central-1b"
  }
}


resource "aws_subnet" "private-subnet3" {
  availability_zone = "eu-central-1c"
  vpc_id     = aws_vpc.main.id
  cidr_block = "192.168.13.0/24"


  tags = {
    Name = "private-subnet3 for u-central-1c"
  }
}