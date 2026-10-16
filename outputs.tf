output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "vpc_cidr" {
  value = aws_vpc.vpc.cidr_block
}

output "public_subnet_ids" {
  value = [aws_subnet.subnet1.id,
    aws_subnet.subnet2.id,
  aws_subnet.subnet3.id]
}

output "public_subnet_cidr_block" {
  value = [aws_subnet.subnet1.cidr_block,
    aws_subnet.subnet2.cidr_block,
  aws_subnet.subnet3.cidr_block]
}

output "public_subnet_availability_zone" {
  value = [aws_subnet.subnet1.availability_zone,
    aws_subnet.subnet2.availability_zone,
  aws_subnet.subnet3.availability_zone]
}

output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
}

output "routing_table_id" {
  value = aws_route_table.rt.id
}