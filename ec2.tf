resource "aws_instance" "public_ec2_a" {
  ami             = "ami-12345678"  # Replace with  AMI ID
  instance_type   = "t2.micro"      # Replace with instance type
  subnet_id       = aws_subnet.public_subnet_a.id
  key_name        = "my-keypair"    # Replace with  key pair name
  security_groups = ["${aws_security_group.public_ec2_sg.id}"]

  tags = {
    Name = "Public EC2 Instance A"
  }
}

resource "aws_instance" "private_ec2_a" {
  ami             = "ami-87654321"  # Replace with  AMI ID
  instance_type   = "t2.micro"      # Replace with instance type
  subnet_id       = aws_subnet.private_subnet_a.id
  key_name        = "my-keypair"    # Replace with key pair name
  security_groups = ["${aws_security_group.private_ec2_sg.id}"]

  tags = {
    Name = "Private EC2 Instance A"
  }
}

resource "aws_instance" "public_ec2_b" {
  ami             = "ami-12345678"  # Replace with  AMI ID
  instance_type   = "t2.micro"      # Replace with instance type
  subnet_id       = aws_subnet.public_subnet_b.id
  key_name        = "my-keypair"    # Replace with key pair name
  security_groups = ["${aws_security_group.public_ec2_sg.id}"]

  tags = {
    Name = "Public EC2 Instance B"
  }
}

resource "aws_instance" "private_ec2_b" {
  ami             = "ami-87654321"  # Replace with  AMI ID
  instance_type   = "t2.micro"      # Replace with instance type
  subnet_id       = aws_subnet.private_subnet_b.id
  key_name        = "my-keypair"    # Replace with  key pair name
  security_groups = ["${aws_security_group.private_ec2_sg.id}"]

  tags = {
    Name = "Private EC2 Instance B"
  }
}
