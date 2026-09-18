resource "aws_security_group" "syscore" {
  name        = "syscore-security-group"
  description = "Security group for SysCore infrastructure"
  vpc_id      = aws_vpc.syscore.id

  tags = {
    Name    = "syscore-security-group"
    Project = "SysCore"
  }
}

resource "aws_vpc_security_group_ingress_rule" "ssh" {
  security_group_id = aws_security_group.syscore.id
  description       = "Allow SSH from inside SysCore VPC"

  cidr_ipv4   = aws_vpc.syscore.cidr_block
  from_port   = 22
  to_port     = 22
  ip_protocol = "tcp"
}

resource "aws_vpc_security_group_egress_rule" "all" {
  security_group_id = aws_security_group.syscore.id
  description       = "Allow outbound IPv4 traffic"

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1"
}

output "security_group_id" {
  value = aws_security_group.syscore.id
}