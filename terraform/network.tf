data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_vpc" "syscore" {
  cidr_block           = var.vpc_cidr
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name    = "syscore-vpc"
    Project = "SysCore"
  }
}

resource "aws_internet_gateway" "syscore" {
  vpc_id = aws_vpc.syscore.id

  tags = {
    Name    = "syscore-igw"
    Project = "SysCore"
  }
}

resource "aws_subnet" "public" {
  vpc_id                  = aws_vpc.syscore.id
  cidr_block              = var.public_subnet_cidr
  availability_zone       = data.aws_availability_zones.available.names[0]
  map_public_ip_on_launch = true

  tags = {
    Name    = "syscore-public-subnet"
    Project = "SysCore"
  }
}

resource "aws_route_table" "public" {
  vpc_id = aws_vpc.syscore.id

  tags = {
    Name    = "syscore-public-rt"
    Project = "SysCore"
  }
}

resource "aws_route" "internet" {
  route_table_id         = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.syscore.id
}

resource "aws_route_table_association" "public" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.public.id
}

output "vpc_id" {
  value = aws_vpc.syscore.id
}

output "public_subnet_id" {
  value = aws_subnet.public.id
}

output "public_subnet_az" {
  value = aws_subnet.public.availability_zone
}