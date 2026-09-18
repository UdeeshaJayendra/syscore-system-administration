data "aws_ssm_parameter" "ubuntu_2404" {
  name = "/aws/service/canonical/ubuntu/server/24.04/stable/current/amd64/hvm/ebs-gp3/ami-id"
}

resource "aws_instance" "syscore" {
  ami                         = data.aws_ssm_parameter.ubuntu_2404.value
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.syscore.id]
  associate_public_ip_address = false

  credit_specification {
    cpu_credits = "standard"
  }

  root_block_device {
    volume_type           = "gp3"
    volume_size           = 8
    encrypted             = true
    delete_on_termination = true
  }

  metadata_options {
    http_tokens = "required"
  }

  tags = {
    Name    = "syscore-server"
    Project = "SysCore"
  }
}

output "instance_id" {
  value = aws_instance.syscore.id
}

output "instance_private_ip" {
  value = aws_instance.syscore.private_ip
}

output "instance_type" {
  value = aws_instance.syscore.instance_type
}