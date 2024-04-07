resource "aws_vpc" "main_vpc" {
  cidr_block = var.vpc_cidr_block
}

resource "aws_subnet" "public_subnet_a" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.public_subnet_cidr_a
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "private_subnet_a" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.private_subnet_cidr_a
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "public_subnet_b" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.public_subnet_cidr_b
  availability_zone = "us-east-1b"
}

resource "aws_subnet" "private_subnet_b" {
  vpc_id            = aws_vpc.main_vpc.id
  cidr_block        = var.private_subnet_cidr_b
  availability_zone = "us-east-1b"
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main_vpc.id
}

resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.main_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
}

resource "aws_route_table_association" "public_subnet_a_association" {
  subnet_id      = aws_subnet.public_subnet_a.id
  route_table_id = aws_route_table.route_table.id
}

resource "aws_route_table_association" "public_subnet_b_association" {
  subnet_id      = aws_subnet.public_subnet_b.id
  route_table_id = aws_route_table.route_table.id
}
