resource "aws_iam_role" "syscore_ec2" {
  name = "syscore-ec2-ssm-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
        Action = "sts:AssumeRole"
      }
    ]
  })

  tags = {
    Name    = "syscore-ec2-ssm-role"
    Project = "SysCore"
  }
}

resource "aws_iam_role_policy_attachment" "ssm" {
  role       = aws_iam_role.syscore_ec2.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore"
}

resource "aws_iam_instance_profile" "syscore_ec2" {
  name = "syscore-ec2-instance-profile"
  role = aws_iam_role.syscore_ec2.name

  tags = {
    Name    = "syscore-ec2-instance-profile"
    Project = "SysCore"
  }
}

output "ec2_iam_role_name" {
  value = aws_iam_role.syscore_ec2.name
}

output "ec2_instance_profile_name" {
  value = aws_iam_instance_profile.syscore_ec2.name
}