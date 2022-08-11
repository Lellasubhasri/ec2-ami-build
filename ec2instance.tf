
resource "aws_instance" "amibuild" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = "t3.small"

  vpc_security_group_ids = [aws_security_group.amibuild.id]
  key_name = "talent-academy-lab"
  subnet_id = data.aws_subnet.private.id

  tags = {
    Name = "HelloSubha"
  }
}

resource "aws_eip" "ansible_server_ip" {
  instance = aws_instance.amibuild.id
  vpc      = true
}

# resource "aws_ami_copy" "example" {
#   name              = "terraform-example"
#   description       = "A copy of ami-0ec007860713acb87"
#   source_ami_id     = "ami-0ec007860713acb87"
#   source_ami_region = "ap-northeast-3"

  

#   tags = {
#     Name = "HelloWorld"
#   }
# }









