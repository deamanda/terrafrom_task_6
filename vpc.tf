resource "aws_vpc" "vpc" {
  cidr_block = var.vpc_cidr

  tags = {
    Name = var.vpc_name
  }
}

resource "aws_subnet" "subnet1" {
  availability_zone = var.availability_zone1
  cidr_block        = var.subnet1_cidr
  vpc_id            = aws_vpc.vpc.id
  tags = {
    Name = "cmtr-otuokx4e-01-subnet-public-a"
  }
}

resource "aws_subnet" "subnet2" {
  availability_zone = var.availability_zone2
  cidr_block        = var.subnet2_cidr
  vpc_id            = aws_vpc.vpc.id

  tags = {
    Name = "cmtr-otuokx4e-01-subnet-public-b"
  }
}

resource "aws_subnet" "subnet3" {
  availability_zone = var.availability_zone3
  cidr_block        = var.subnet3_cidr
  vpc_id            = aws_vpc.vpc.id

  tags = {
    Name = "cmtr-otuokx4e-01-subnet-public-c"
  }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "cmtr-otuokx4e-01-igw"
  }
}

resource "aws_route_table" "rt" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "cmtr-otuokx4e-01-rt"
  }
}
